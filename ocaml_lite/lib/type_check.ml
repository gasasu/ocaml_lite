open Ast

let next_var = ref 0

let fresh_var (_ : unit) : string =
  let () = next_var := !next_var + 1 in
  "x$" ^ string_of_int !next_var

exception TypeError of string
let type_error = "Incompatible types"
let uni_err = "Unification failed"


let rec unification substitutions cs = 
  match cs with
  | [] -> substitutions
  | (a,b) :: t -> let ss, cs = unify_single a b in let nc = substitution ss (cs @ t) in unification (substitutions @ ss) nc

  (* takes a substitution list and constraint list*)
and substitution ss cs = 
  match ss with 
  | [] -> cs
  | [(c, d)] -> substitute c d cs

(* takes a string, a type and a constraint list*)
and substitute a b cs = 
  match cs with 
  | (c,d) :: t -> (replace a b c , replace a b d ) :: (substitute a b t)
  | [] -> cs 


(* returns a tuple of substitutions and constraints of type ([string * type], [type * type]) *)
and unify_single a b = 
  match (a, b) with 
  | (Freshtype c, Freshtype d) -> if c = d then ([], []) else ([(c,b)], [])
  | (Freshtype c, d )-> if occurs c d then raise (TypeError uni_err ) else ([(c,b)], [])
  | (c , Freshtype d) ->  if occurs d c then raise (TypeError uni_err ) else ([(d,a)], [])
  | (Func (c,d), Func (e,f)) -> ([], [(c,e); (d,f)])
  | (ForallTy (a, b), t)  | (t , ForallTy (a, b) )-> let f = Freshtype (fresh_var()) in let c = replace a f b in ([], [(t, c)])
  | (Etype c, Etype d) -> if List.length c = List.length d then ( [] ,List.map2 (fun x y -> (x,y)) c d) else raise (TypeError "unification error")
  | (c , d) -> if c = d then ([], []) else raise (TypeError "unification error")
  | _ -> raise (TypeError uni_err)

and occurs c d = 
  match d with 
  | Freshtype e -> if c = e then true else false
  | Func (g, h) -> occurs c g ||  occurs c h 
  | Etype h -> List.exists (occurs c) h 
  | _ -> false 

(* Takes a string, a type and type*)
and replace a f b = 
  match b with 
  | Func (d, e) -> Func (replace a f d, replace a f e)
  | Freshtype c -> if c = a then f else b
  | Etype d -> Etype (List.map (fun x -> replace a f x) d)
  | _ -> b

and apply_substitution subs typ = 
  match typ with 
  | Func (d, e) -> Func (apply_substitution subs d, apply_substitution subs e)
  | Freshtype c -> (match List.assoc_opt c subs with 
  | Some t -> t
  | None -> typ )
  | Etype d -> Etype (List.map (fun x -> apply_substitution subs x) d)
  | _ -> typ


and collect_free_var_type typ = 
  match typ with 
  | Func (d,e) -> let list1 = collect_free_var_type d in 
    let list2 = collect_free_var_type e in 
    List.rev_append (List.filter (fun x -> not (List.mem x list1)) list2) list1
  | Etype d ->  List.flatten (List.map (fun x -> collect_free_var_type x) d)
  | Freshtype c -> [c]
  | _ -> []

and generalise env typ = 
  let free_var_type = collect_free_var_type typ in
  let target_var = List.filter (fun s -> List.exists (fun (t, _) -> t <> s) env) free_var_type in 
  List.fold_right (fun var acc -> ForallTy(var, acc)) target_var typ

let lookup env e = 
  match List.assoc_opt e env with 
  | Some t -> t
  | None -> raise (TypeError e )

type type_env = (string * ast_type_expr) list

let env = [("int_of_string", Func (TypeString, TypeInt)); 
("string_of_int", Func (TypeInt, TypeString)); ("print_string", Func (TypeString, TypeUnit))]

let add_to_environment env a = 
  let env = a :: env in 
  env

let rec add_to_environments env a = 
  match a with 
  | [] -> env 
  | h :: t -> let new_env = add_to_environment env h in add_to_environments new_env t

let extract_second_element tuple = match tuple with
  | (_, second) -> second

let extract_second_values tuple_list =
  List.map extract_second_element tuple_list

  let rec typecheck_params env a = 
  match a with 
  | [] -> []
  | SingleParam c :: t -> let b = fresh_var() in (c,Freshtype b) :: typecheck_params env t
  | TypedParam (c,[d]) :: t -> (c,d) :: typecheck_params env t

let add_branch env a h = 
  match h with 
  | (b, []) -> let new_env = add_to_environment env (b, TypeId a) in new_env
  | (b, [c]) -> let new_env = add_to_environment env (b, Func (c,TypeId a)) in new_env

let typecheck_return bc bt return_type = 
  match return_type with 
  | [] -> bc 
  | [h] -> (h, bt) :: bc 

let rec typecheck_expr (env: type_env) (ex : ast_expr) =
  match ex with
  | Letexpr (a,b,c,d,e) -> typecheck_letexpr env a b c d e
  | Letrec (a,b,c,d,e) -> typecheck_letrecexpr env a b c d e
  | Ifexpr (a, b, c) -> typecheck_ifexpr env a b c
  | Funcexpr (a, b, c) -> typecheck_funcexpr env a b c
  | Appexpr (a, b) -> typecheck_appexpr env a b
  | Tupleexpr a -> typecheck_tupexpr env a
  | Binop (a, b, c) -> typecheck_binop env b a c
  | Unop (a, b) -> typecheck_unop env a b
  | True | False -> ([], TypeBool)
  | Int _ -> ([], TypeInt)
  | String _ -> ([], TypeString)
  | Id a -> ([], (lookup env a))
  | EmptyParen -> ([], TypeUnit)
  | Match (a, b) -> typecheck_match env a b

and typecheck_match env a b = 
  let (ec, et) = typecheck_expr env a in
  let (mc, mt) = typecheck_branch env b et in 
  (mc@ec, mt)


and typecheck_branch env branch et = 
  match branch with 
  | Branch (a,b,c) :: [] -> let (_,e) = typecheck_expr env (Id a) in 
    (match e with
      | Func (left, right) -> let params = get_parameters left b in
        let new_env = add_to_environments env params in 
        let (rc, rt) =  typecheck_expr new_env c in 
          ((et, right) :: rc, rt)
      | TypeId _ -> let params = get_parameters e b in
        let new_env = add_to_environments env params in
        let (rc, rt) =  typecheck_expr new_env c in 
          ((et, e) :: rc, rt)
      | _ -> raise (TypeError type_error) 
      )

  | Branch (a,b,c) :: t -> let (_,e) = typecheck_expr env (Id a) in
    (match e with
      | Func (left, right) -> let params = get_parameters left b in
        let new_env = add_to_environments env params in
        let (bc,bt) = typecheck_expr new_env c in 
        let (rc, rt) = typecheck_branch env t et in 
          ((bt, rt) :: (et, right) :: bc @ rc, bt)
      | TypeId _ -> let params = get_parameters e b in
        let new_env = add_to_environments env params in
        let (bc,bt) = typecheck_expr new_env c in 
        let (rc, rt) = typecheck_branch env t et in 
          ((bt, rt) :: (et, e) :: bc @ rc, bt)
      | _ -> raise (TypeError type_error))

(* takes a type and a parameter list and returns a list of parameters bound to types *)
and get_parameters a b = 
  match a, b with 
  | TypeId _ , EmptyPattern -> []
  | TypeId _, SinglePattern d -> [(d, a)]
  | TypeInt , SinglePattern d -> [(d,a)]
  | TypeBool, SinglePattern d -> [(d,a)]
  | TypeString, SinglePattern d -> [(d, a)]
  | Etype f, ListPattern e -> if List.length f = List.length e then 
    List.map2 (fun x y -> (y,x)) f e else raise (TypeError type_error) 
  | _ -> raise (TypeError type_error)

and typecheck_letexpr env a b c d e = 
  let (fc, ft) = typecheck_funcexpr env b c d in 
  let fc' = unification [] (fc) in 
  let nt = apply_substitution fc' ft in 
  let gt = generalise env nt in 
  let new_env = add_to_environment env (a, gt ) in 
  let (ec, et) = typecheck_expr new_env e in 
  (ec@fc, et)

and typecheck_letrecexpr env a b c d e = 
  let f = fresh_var() in
  let new_env = add_to_environment env (a, Freshtype f) in   
  let (fc, ft) = typecheck_funcexpr new_env b c d in 
  let fc' = unification [] ((Freshtype f, ft) :: fc) in 
  let nt = apply_substitution fc' ft in 
  let gt = generalise env nt in 
  let new_env = add_to_environment env (a, gt ) in 
  let (ec, et) = typecheck_expr new_env e in 
  (ec@fc, et)

and typecheck_ifexpr env a b c = 
  let (d, e) = typecheck_expr env a in
  let (f,g) = typecheck_expr env b in
  let (h, i) = typecheck_expr env c in
  let j = d @ f @ h in 
  ((e, TypeBool) :: (g,i) :: j , g)  

and typecheck_tupexpr env exprs =
  let rec help env ex = 
    match ex with 
    | h :: [] -> let (cs,t) = typecheck_expr env h in (cs, [t]) 
    | h :: t ->  let (hcs, ht) = typecheck_expr env h in 
    let (tcs, tt) = help env t in 
    (hcs @ tcs, ht :: tt) in

  let (c,d) = help env exprs in 
  (c, Etype d)
  
and typecheck_binop env binop expr1 expr2 =
  let (q,r) = typecheck_expr env expr1 in
  let (s,t) = typecheck_expr env expr2 in 
  match binop, r, t with
  | Add, a, b -> ([( a , TypeInt); (b, TypeInt)] @ q @ s, TypeInt)
  | Sub, a, b -> ([(a, TypeInt); (b, TypeInt)] @ q @ s, TypeInt)
  | Mul, a, b -> ([(a, TypeInt); (b, TypeInt)]@ q @ s, TypeInt)
  | Div, a, b -> ([(a, TypeInt); (b, TypeInt)]@ q @ s, TypeInt)
  | Modulo, a, b -> ([(a, TypeInt); (b, TypeInt)]@ q @ s, TypeInt)
  | Lessthan, a, b -> ([(a, TypeInt); (b, TypeInt)]@ q @ s, TypeBool)
  | Equal, a, b -> ([(a,b)] @ q @ s, TypeBool)
  | Concatenation, a, b -> ([(a, TypeString); (b, TypeString)] @ q @ s, TypeString)
  | LAnd, a, b -> ([(a, TypeBool); (b, TypeBool)] @ q @ s, TypeBool)
  | LOr, a, b -> ([(a, TypeBool); (b, TypeBool)] @ q @ s, TypeBool)

 and typecheck_unop env unop expr =
  let (a,b) = typecheck_expr env expr in 
  match unop, b with
  | UNot, c -> ([(c, TypeBool)] @ a, TypeBool)
  | UNegate, c -> ([(c,TypeInt)] @ a, TypeInt)

and typecheck_funcexpr env params return_type body =
  let d = typecheck_params env params in
  let env' = d @ env in 
  let (bc, bt) = typecheck_expr env' body in
  let rc = typecheck_return bc bt return_type in 
  let rt = extract_second_values d in 
  (rc, List.fold_right (fun a b -> Func (a, b)) rt bt)

and typecheck_appexpr env func body = 
  let (fc, ft) = typecheck_expr env func in
  let (bc, bt) = typecheck_expr env body in 
  let a = fresh_var() in
  ([(ft, Func (bt, Freshtype a))] @ fc @ bc, Freshtype a)

and typecheck_letbinding env a b c d = 
  let (fc, ft) = typecheck_funcexpr env b c d in 
  let fc' = unification [] fc in
  let nt = apply_substitution fc' ft in  
  let gt = generalise env nt in 
  let new_env = add_to_environment env (a, gt) in 
  (new_env)

and typecheck_letrecbinding env a b c d = 
  let f = fresh_var() in
  let new_env = add_to_environment env (a, Freshtype f) in   
  let (fc, ft) = typecheck_funcexpr new_env b c d in 
  let fc' = unification [] ((Freshtype f, ft) :: fc) in 
  let nt = apply_substitution fc' ft in  
  let gt = generalise env nt in 
  let new_env = add_to_environment env (a, gt) in 
  (new_env)

and typecheck_typebinding env a b = 
  match b with 
  | [] -> env 
  | h :: t -> let env' = add_branch env a h in typecheck_typebinding env' a t

and typecheck_program bindings = 
  let rec helper env ex = 
    match ex with
    | [] -> env
    | Letbinding (a,b,c,d) :: t -> let new_env = typecheck_letbinding env a b c d in helper new_env t
    | Letrecbinding (a, b, c,d) :: t -> let new_env = typecheck_letrecbinding env a b c d in helper new_env t
    | Typebinding (a,b) :: t -> let new_env = typecheck_typebinding env a b in helper new_env t 
    in 
  helper env bindings

and typecheck program = 
  match program with 
    | P d -> (match d with 
      | Program x -> typecheck_program x )
      (* | _ -> raise (TypeError "Your program should be a binding")) *)
    | _ -> raise (TypeError "Your program should be a binding") 