type ast_program = Program of ast_binding list

and ast_binding = Letbinding of string * ast_param list * ast_type_expr list  * ast_expr
| Letrecbinding of string * ast_param list * ast_type_expr list * ast_expr
| Typebinding of string * (string * ast_type_expr list ) list

and ast_param = SingleParam of string
| TypedParam of string * ast_type_expr list

and ast_expr = 
| Letexpr of (string * ast_param list * ast_type_expr list  * ast_expr * ast_expr)
| Letrec of (string * ast_param list * ast_type_expr list  * ast_expr * ast_expr)
| Ifexpr of (ast_expr * ast_expr * ast_expr)
| Funcexpr of (ast_param list * ast_type_expr list * ast_expr)
| Appexpr of (ast_expr * ast_expr)
| Tupleexpr of ((ast_expr) list)
| Binop of (ast_expr * binop * ast_expr)
| Unop of (unop * ast_expr)
| True
| False
| Int of int
| String of string 
| Id of string 
| EmptyParen
| Match of (ast_expr * ast_match_branch list) 

and binop = Add 
| Sub 
| Mul 
| Div 
| Modulo
| Lessthan 
| Equal 
| Concatenation 
| LAnd 
| LOr 

and unop = | UNot  | UNegate 

and ast_type_expr = Func of ast_type_expr * ast_type_expr
| Etype of ast_type_expr * ast_type_expr
| TypeInt | TypeBool | TypeString | TypeUnit | TypeId of string

and ast_match_branch = Branch of (string * ast_pattern_vars * ast_expr)

and ast_pattern_vars = SinglePattern of string
|  ListPattern of string list
| EmptyPattern

and ast_start = P of ast_program | E of ast_expr
(* 
Write a function to print your AST types   
*)