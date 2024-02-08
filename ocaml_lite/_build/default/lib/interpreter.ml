open Ast
exception TypeError of string
let interpreter_error = "This expression cannot be interpreted"
let err = "some error"
type value = VInt of int
| VBool of bool
| VUnit
| VBuiltIn of string
| VString of string
| VUser of string * value list
| VList of value list
| VConstr of string
| VClosure of  string * (string * value) list * ast_expr * string option

let context : (string * value) list = [("int_of_string", VBuiltIn "int_of_string"); 
("string_of_int",  VBuiltIn "string_of_int"); ("print_string",  VBuiltIn "print_string")]

let lookup context e = 
  match List.assoc_opt e context with 
  | Some t -> t
  | None -> raise (TypeError e )

let add_to_context context a = 
  let context = a :: context in 
  context

(* Takes a list of parameters, context, body of a function and option*)
let curry_function params ct body opt =
  match params with 
  | SingleParam x :: [] | TypedParam (x, _) :: [] -> VClosure (x, ct , body, opt)
  | SingleParam x :: t | TypedParam (x, _) :: t -> VClosure (x, ct , Funcexpr (t, [], body), opt)

let rec interpret program = 
  match program with 
    | P d -> (match d with 
      | Program x -> interpret_program x )
    | _ -> raise (TypeError "Your program should be a binding")

and interpret_program bindings = 
  let rec helper context ex = 
    match ex with
    | [] -> ()
    | Letbinding (a,b,_,d) :: t -> let new_context = interpret_letbinding context a b d in helper new_context t
    | Letrecbinding (a, b,_,d) :: t -> let new_context = interpret_letrecbinding context a b d in helper new_context t
    | Typebinding (_ ,b) :: t -> let new_context = interpret_typebinding context b in helper new_context t 
    in 
  helper context bindings

and interpret_letbinding context a b d = 
  match b with 
  | [] -> let rv = interpret_expr context d in 
    let new_context = add_to_context context (a, rv) in 
    new_context
  | _ -> let rv = interpret_funcexpr context b d in 
    let new_context = add_to_context context (a, rv) in 
    new_context
 
and interpret_letrecbinding context a b d = 
  let value = curry_function b context d (Some a) in
  let new_context = add_to_context context (a, value) in
  new_context

and interpret_typebinding context b = 
  match b with 
  | [] -> context
  | h :: t -> let context' = add_branch context h in interpret_typebinding context' t

and add_branch context h = 
  match h with 
  | (b, []) -> let new_context = add_to_context context (b, VUser (b, [])) in new_context
  | (b, [_]) -> let new_context = add_to_context context (b, VConstr b) in new_context

(* Takes a context and expr and evaluates the expr within the given context*)
and interpret_expr context ex  =
  match ex with
  | Letexpr (a,b,_ ,d,e) -> interpret_letexpr context a b d e
  | Letrec (a,b,_,d,e) -> interpret_letrecexpr context a b d e
  | Ifexpr (a, b, c) -> interpret_ifexpr context a b c
  | Funcexpr (a, _, c) -> interpret_funcexpr context a c
  | Appexpr (a, b) -> interpret_appexpr context a b
  | Tupleexpr a -> interpret_tupexpr context a
  | Binop (a, b, c) -> interpret_binop context b a c
  | Unop (a, b) -> interpret_unop context a b
  | True -> VBool true
  | False -> VBool false
  | Int i -> VInt i
  | String s -> VString s
  | Id a -> lookup context a
  | EmptyParen -> VUnit
  | Match (a, b) -> interpret_match context a b


and interpret_appexpr context a b = 
  let arg = interpret_expr context b in 
  match interpret_expr context a with 
  | VClosure (s, vals, expr, None) -> interpret_expr ((s, arg):: vals) expr
    
  | VClosure (s, vals, expr, Some name) -> interpret_expr ((name, VClosure (s, vals, expr, Some name))::(s, arg)::vals) expr
    
  | VConstr s -> VUser (s, [arg])
  | VBuiltIn s -> (match s with 
    | "int_of_string" -> (match arg with 
      | VString v -> VInt (int_of_string v)
      | _ -> raise (TypeError "invalid types")) 
    | "string_of_int" -> (match arg with 
      | VInt v -> VString (string_of_int v)
      | _ -> raise (TypeError "invalid types")) 
    | "print_string" ->  (match arg with 
      | VString v -> let _ = print_string v in VUnit
      | _ -> raise (TypeError "invalid types")) )
  | _ -> raise (TypeError err) 

and interpret_match context a b = 
  let v = interpret_expr context a in 
  interpret_matchbranch context v b 


and interpret_matchbranch context v b = 
  match b with
  | [] -> raise (TypeError interpreter_error)
  | Branch (s, args, expr) :: t -> (match v with 
    | VUser (cs, vals) when s = cs -> (match args with
      | EmptyPattern -> interpret_expr context expr
      | SinglePattern f -> let [h] = vals in 
        let new_context = add_to_context context (f, h) in 
        interpret_expr new_context expr
      | ListPattern str_lst -> let [VList patterns] = vals in
        let new_context =  (List.combine str_lst patterns) @ context in 
        interpret_expr new_context expr)
      
    | _ -> interpret_matchbranch context v t)


and interpret_letexpr context a b d e = 
  match b with 
  | [] -> let rv = interpret_expr context d in 
    let new_context = add_to_context context (a, rv) in 
    interpret_expr new_context e
  | _ -> let rv = interpret_funcexpr context b d in 
    let new_context = add_to_context context (a, rv) in 
    interpret_expr new_context e

and interpret_letrecexpr context a b d e = 
  let value = curry_function b context d (Some a) in
  let new_context = add_to_context context (a, value) in
  interpret_expr new_context e 

and interpret_funcexpr context a c = 
  let func = curry_function a context c None in 
  func

and interpret_binop context binop expr1 expr2 =
  match binop, expr1, expr2 with
  | Add, a, b -> (match interpret_expr context a , interpret_expr context b with
    | VInt e1, VInt e2 -> VInt (e1 + e2)
    | _ -> raise (TypeError interpreter_error))
  | Sub, a, b -> (match interpret_expr context a , interpret_expr context b with
    | VInt e1, VInt e2 -> VInt (e1 - e2)
    | _ -> raise (TypeError interpreter_error))
  | Mul, a, b ->(match interpret_expr context a , interpret_expr context b with
    | VInt e1, VInt e2 -> VInt (e1 * e2)
    | _ -> raise (TypeError interpreter_error))
  | Div, a, b -> (match interpret_expr context a , interpret_expr context b with
    | VInt e1, VInt e2 -> VInt (e1 / e2)
    | _ -> raise (TypeError interpreter_error))
  | Modulo, a, b ->(match interpret_expr context a , interpret_expr context b with
    | VInt e1, VInt e2 -> VInt (e1 mod e2)
    | _ -> raise (TypeError interpreter_error))
  | Lessthan, a, b -> (match interpret_expr context a , interpret_expr context b with
    | VInt e1, VInt e2 -> VBool (e1 < e2)
    | _ -> raise (TypeError interpreter_error))
  | Equal, a, b -> (match interpret_expr context a , interpret_expr context b with
    | VInt e1, VInt e2 -> VBool (e1 = e2)
    | VBool e1, VBool e2 -> VBool (e1 = e2)
    | _ -> raise (TypeError interpreter_error))
  | Concatenation, a, b -> (match interpret_expr context a , interpret_expr context b with
    | VString e1, VString e2 -> VString (e1^e2)
    | _ -> raise (TypeError interpreter_error))
  | LAnd, a, b ->(match interpret_expr context a , interpret_expr context b with
    | VBool e1, VBool e2 -> VBool (e1 && e2)
    | _ -> raise (TypeError interpreter_error))
  | LOr, a, b -> (match interpret_expr context a , interpret_expr context b with
    | VBool e1, VBool e2 -> VBool (e1 || e2)
    | _ -> raise (TypeError interpreter_error))

and interpret_unop context unop expr =
  match unop, expr with
  | UNot, c -> (match interpret_expr context c with
    | VBool e1-> VBool (not e1)
    | _ -> raise (TypeError interpreter_error))
  | UNegate, c -> (match interpret_expr context c with
    | VInt e1-> VInt (-1*e1)
    | _ -> raise (TypeError interpreter_error))

and interpret_ifexpr context a b c = 
  match interpret_expr context a with
  | VBool true -> interpret_expr context b 
  | VBool false -> interpret_expr context c
  | _ -> raise (TypeError interpreter_error)

and interpret_tupexpr context a = 
  VList (List.map (fun x -> interpret_expr context x) a) 