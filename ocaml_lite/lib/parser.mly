%{
    open Ast
%}

  %token Type
  %token Of               
  %token Let              
  %token Rec              
  %token In               
  %token If               
  %token Then             
  %token Else             
  %token Match            
  %token With             
  %token Fun              
  %token True             
  %token False            
  %token Mod              
  %token TInt             
  %token TBool            
  %token TString          
  %token TUnit            
  %token Eq               
  %token Plus             
  %token Minus            
  %token Times            
  %token Divide           
  %token Lt               
  %token Concat           
  %token And              
  %token Or               
  %token Not              
  %token Negate           
  %token DoubleSemicolon  
  %token Colon            
  %token Arrow            
  %token DoubleArrow      
  %token LParen           
  %token RParen           
  %token Pipe             
  %token Comma           
  %token <string> Id    
  %token <int> Int       
  %token <string> String 
  %token EOF              

%start <ast_start> start

%right Else
%nonassoc In
%left Or
%left And
%nonassoc Lt Eq
%left Plus Minus Concat
%left Times Divide Mod 
%left Negate
%left Not
%right DoubleArrow  Arrow

%type <ast_program> program
%type <ast_expr> app_expr
%type <ast_expr> base_expr
%type <ast_binding> binding
%type <ast_binding list> bindings
%type <ast_expr> expr
%type <ast_match_branch> match_branch
%type <ast_match_branch list> match_branches
%type <ast_param> param
%type <ast_param list> params
%type <string list> pattern_expr
%type <string list> pattern_var
%type <ast_pattern_vars> pattern_vars
// %type <ast_expr list> tup_expr
// %type <ast_expr list> tuple_expr
%type <string*ast_type_expr list> type_def
%type <(string*ast_type_expr list) list> type_defs
%type <ast_type_expr> type_expr
%type <ast_type_expr list> types
%type <ast_type_expr list> let_types


%%
(*
<program> ::= [<binding> ;;]+

<binding> ::= let $id [<param>]* [: <type>] = <expr>
            | let rec $id [<param>]* [: <type>] = <expr>
            | type $id = ['|' $id [of <type>]]+
*)
start:
| a = program {P a}
| b = expr; EOF {E b}

program:
| b = bindings; EOF; { Program b }

bindings:
|b = binding ; DoubleSemicolon; bs = bindings { b :: bs}
| b = binding; DoubleSemicolon {b::[]}

binding:
| Let; id = Id ; p = params; t = let_types ; Eq ; e = expr {Letbinding (id, p, t, e)}
| Let; Rec; id = Id ; p = params; t = let_types ; Eq ; e = expr {Letrecbinding (id, p, t, e)}
| Type; id=Id; Eq ; s = type_defs {Typebinding (id, s)}

type_defs:
| t = type_def; {t::[]}
| t = type_def; ts = type_defs {t::ts}

type_def:
| Pipe ; id = Id {(id, [])}
| Pipe ; id = Id; Of; t = types; {(id,  t)}

(*
<param> ::= $id
          | ( $id : <type> )
*)


params:
|  {[]}
| p = param; ps = params {p :: ps}

param:
 | id = Id {SingleParam id}
 | LParen; id = Id ; t = let_types; RParen {TypedParam (id, t)}

(*
<expr> ::= let $id [<param>]* [: <type>] = <expr> in <expr>
         | let rec $id [<param>]* [: <type>] = <expr> in <expr>
         | if <expr> then <expr> else <expr>
         | fun [<param>]+ [: <type>] => <expr>
         | <expr> <expr>
         | ( <expr> [, <expr>]+ )
         | <expr> <binop> <expr>
         | <unop> <expr>
         | $int
         | true
         | false
         | $string
         | $id
         | ( )
         | match <expr> with ['|' <match_branch>]+

*)
expr:
| Let; id = Id; ps = params; ts = let_types; Eq ; e1=expr; In ; e2 = expr { Letexpr (id, ps, ts, e1, e2) }
| Let ; Rec; id = Id; ps = params; ts = let_types; Eq ; e1=expr; In ; e2 = expr { Letrec (id, ps, ts, e1, e2) }
| If; e1 = expr; Then; e2 = expr; Else; e3 = expr { Ifexpr(e1, e2, e3) }
| Fun; p = params; t = let_types; DoubleArrow; e = expr { Funcexpr (p, t, e) }
// | LParen ; e = expr ; RParen { e }
| a = app_expr; { a }
// | t = tuple_expr { t}
| e1=expr ; Minus ; e2=expr { Binop (e1, Sub, e2) }
| e1=expr ; Plus ; e2=expr { Binop (e1, Add, e2) }
| e1=expr ; Times ; e2=expr { Binop (e1, Mul, e2) }
| e1=expr ; Divide ; e2=expr { Binop (e1, Div, e2) }
| e1=expr ; Lt ; e2=expr { Binop (e1, Lessthan, e2) }
| e1=expr ; Mod ; e2=expr { Binop (e1, Modulo, e2) }
| e1=expr ; Eq ; e2=expr { Binop (e1, Equal, e2) }
| e1=expr ; Concat ; e2=expr { Binop (e1, Concatenation, e2) }
| e1=expr ; And ; e2=expr { Binop (e1, LAnd, e2) }
| e1=expr ; Or ; e2=expr { Binop (e1, LOr, e2) }
| Not ; e=expr { Unop (UNot, e) }
| Negate; e=expr { Unop (UNegate, e) }
// | LParen ; RParen { EmptyParen}
// | True { True }
// | False { False }
// | id = Id { Id id}
// | v = Int {Int v}
// | s = String {String s}
// | Match; e=expr ; With; Pipe; v = match_branches; { Match (e, v)}
| Match; e=expr ; With; v = match_branches; { Match (e, v)}


match_branches:
// | m =  match_branch; Pipe; ms = match_branches { [ m :: ms ]}
// | m = match_branch;  {[m]}
| Pipe; m = match_branch {m :: []}
| m = match_branch; ms = match_branches {m::ms}

// <match_branch> ::= $id [<pattern_vars>] => <expr>

// <pattern_vars> ::= $id
//                  | ( $id [, $id ]+ )

match_branch:
| id = Id ; p = pattern_vars; DoubleArrow; e = expr {Branch (id, p, e)}

pattern_vars:
| {EmptyPattern}
| id = Id {SinglePattern id}
| t = pattern_expr { ListPattern t }

pattern_expr:
| LParen ; t = pattern_var ; RParen {t}

pattern_var:
| e1 = Id; Comma; e2 = Id  { e1 :: e2 :: [] }
| t = pattern_expr; Comma; e = Id {e :: t}

app_expr:
| a = app_expr; b = base_expr { Appexpr (a, b)}
| b = base_expr { b }

base_expr:
| LParen ; RParen { EmptyParen}
| True { True }
| False { False }
| id = Id { Id id}
| v = Int {Int v}
| s = String {String s}
| LParen ; e = expr ; RParen { e }
// | t = tuple_expr {t}

// tuple_expr:
// | LParen ; t = tup_expr ; RParen {t}

// tup_expr:
// | e1 = expr ; Comma ; e2 = expr { e1 :: e2 :: [] }
// | t = tup_expr; Comma; e = expr {t :: e }

(*
<type> ::= <type> -> <type>
         | ( <type> )
         | <type> * <type>
         | int
         | bool
         | string
         | unit
         | $id
*)

// ASk question about how to parse types correctly.

type_expr:
| TInt {TypeInt}
| TBool {TypeBool}
| TString {TypeString}
| TUnit {TypeUnit}
| id = Id {TypeId id}
| LParen ; t=type_expr; RParen {t}
| t1 = type_expr ; Arrow; t2=type_expr {Func (t1, t2) }
|  t=type_expr ; Times; ts = type_expr {Etype (t,ts)}

let_types:
| Colon; t = types {t}
| {[]}

types:
| {[]}
| t = type_expr { t :: [] }

