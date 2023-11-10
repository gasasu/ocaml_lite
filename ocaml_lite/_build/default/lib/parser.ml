
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | With
    | Type
    | True
    | Times
    | Then
    | TUnit
    | TString
    | TInt
    | TBool
    | String of (
# 44 "lib/parser.mly"
         (string)
# 24 "lib/parser.ml"
  )
    | Rec
    | RParen
    | Plus
    | Pipe
    | Or
    | Of
    | Not
    | Negate
    | Mod
    | Minus
    | Match
    | Lt
    | Let
    | LParen
    | Int of (
# 43 "lib/parser.mly"
         (int)
# 43 "lib/parser.ml"
  )
    | In
    | If
    | Id of (
# 42 "lib/parser.mly"
         (string)
# 50 "lib/parser.ml"
  )
    | Fun
    | False
    | Eq
    | Else
    | EOF
    | DoubleSemicolon
    | DoubleArrow
    | Divide
    | Concat
    | Comma
    | Colon
    | Arrow
    | And
  
end

include MenhirBasics

# 1 "lib/parser.mly"
  
    open Ast

# 74 "lib/parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_start) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: start. *)

  | MenhirState003 : (('s, _menhir_box_start) _menhir_cell1_Type _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 003.
        Stack shape : Type Id.
        Start symbol: start. *)

  | MenhirState006 : (('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 006.
        Stack shape : Pipe Id.
        Start symbol: start. *)

  | MenhirState011 : (('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_state
    (** State 011.
        Stack shape : LParen.
        Start symbol: start. *)

  | MenhirState014 : (('s, _menhir_box_start) _menhir_cell1_type_expr, _menhir_box_start) _menhir_state
    (** State 014.
        Stack shape : type_expr.
        Start symbol: start. *)

  | MenhirState016 : (('s, _menhir_box_start) _menhir_cell1_type_expr, _menhir_box_start) _menhir_state
    (** State 016.
        Stack shape : type_expr.
        Start symbol: start. *)

  | MenhirState022 : (('s, _menhir_box_start) _menhir_cell1_type_def, _menhir_box_start) _menhir_state
    (** State 022.
        Stack shape : type_def.
        Start symbol: start. *)

  | MenhirState026 : (('s, _menhir_box_start) _menhir_cell1_Not, _menhir_box_start) _menhir_state
    (** State 026.
        Stack shape : Not.
        Start symbol: start. *)

  | MenhirState027 : (('s, _menhir_box_start) _menhir_cell1_Negate, _menhir_box_start) _menhir_state
    (** State 027.
        Stack shape : Negate.
        Start symbol: start. *)

  | MenhirState028 : (('s, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_state
    (** State 028.
        Stack shape : Match.
        Start symbol: start. *)

  | MenhirState031 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 031.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState033 : (('s, _menhir_box_start) _menhir_cell1_LParen _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 033.
        Stack shape : LParen Id.
        Start symbol: start. *)

  | MenhirState034 : (('s, _menhir_box_start) _menhir_cell1_Colon, _menhir_box_start) _menhir_state
    (** State 034.
        Stack shape : Colon.
        Start symbol: start. *)

  | MenhirState039 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_state
    (** State 039.
        Stack shape : Let Id params.
        Start symbol: start. *)

  | MenhirState041 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_state
    (** State 041.
        Stack shape : Let Id params let_types.
        Start symbol: start. *)

  | MenhirState042 : (('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_state
    (** State 042.
        Stack shape : LParen.
        Start symbol: start. *)

  | MenhirState045 : (('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_state
    (** State 045.
        Stack shape : If.
        Start symbol: start. *)

  | MenhirState047 : (('s, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_state
    (** State 047.
        Stack shape : Fun.
        Start symbol: start. *)

  | MenhirState048 : ((('s, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_state
    (** State 048.
        Stack shape : Fun params.
        Start symbol: start. *)

  | MenhirState050 : (((('s, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_state
    (** State 050.
        Stack shape : Fun params let_types.
        Start symbol: start. *)

  | MenhirState054 : (('s, _menhir_box_start) _menhir_cell1_app_expr, _menhir_box_start) _menhir_state
    (** State 054.
        Stack shape : app_expr.
        Start symbol: start. *)

  | MenhirState055 : ((('s, _menhir_box_start) _menhir_cell1_app_expr, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_state
    (** State 055.
        Stack shape : app_expr LParen.
        Start symbol: start. *)

  | MenhirState056 : (((('s, _menhir_box_start) _menhir_cell1_app_expr, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 056.
        Stack shape : app_expr LParen expr.
        Start symbol: start. *)

  | MenhirState057 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Times, _menhir_box_start) _menhir_state
    (** State 057.
        Stack shape : expr Times.
        Start symbol: start. *)

  | MenhirState060 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Plus, _menhir_box_start) _menhir_state
    (** State 060.
        Stack shape : expr Plus.
        Start symbol: start. *)

  | MenhirState061 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Plus, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 061.
        Stack shape : expr Plus expr.
        Start symbol: start. *)

  | MenhirState062 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Mod, _menhir_box_start) _menhir_state
    (** State 062.
        Stack shape : expr Mod.
        Start symbol: start. *)

  | MenhirState064 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Divide, _menhir_box_start) _menhir_state
    (** State 064.
        Stack shape : expr Divide.
        Start symbol: start. *)

  | MenhirState066 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Or, _menhir_box_start) _menhir_state
    (** State 066.
        Stack shape : expr Or.
        Start symbol: start. *)

  | MenhirState067 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Or, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 067.
        Stack shape : expr Or expr.
        Start symbol: start. *)

  | MenhirState068 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Minus, _menhir_box_start) _menhir_state
    (** State 068.
        Stack shape : expr Minus.
        Start symbol: start. *)

  | MenhirState069 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Minus, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 069.
        Stack shape : expr Minus expr.
        Start symbol: start. *)

  | MenhirState070 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Lt, _menhir_box_start) _menhir_state
    (** State 070.
        Stack shape : expr Lt.
        Start symbol: start. *)

  | MenhirState071 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Lt, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 071.
        Stack shape : expr Lt expr.
        Start symbol: start. *)

  | MenhirState072 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Concat, _menhir_box_start) _menhir_state
    (** State 072.
        Stack shape : expr Concat.
        Start symbol: start. *)

  | MenhirState073 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Concat, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 073.
        Stack shape : expr Concat expr.
        Start symbol: start. *)

  | MenhirState074 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Eq, _menhir_box_start) _menhir_state
    (** State 074.
        Stack shape : expr Eq.
        Start symbol: start. *)

  | MenhirState075 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Eq, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 075.
        Stack shape : expr Eq expr.
        Start symbol: start. *)

  | MenhirState076 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_And, _menhir_box_start) _menhir_state
    (** State 076.
        Stack shape : expr And.
        Start symbol: start. *)

  | MenhirState077 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_And, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 077.
        Stack shape : expr And expr.
        Start symbol: start. *)

  | MenhirState079 : (('s, _menhir_box_start) _menhir_cell1_param, _menhir_box_start) _menhir_state
    (** State 079.
        Stack shape : param.
        Start symbol: start. *)

  | MenhirState081 : ((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 081.
        Stack shape : If expr.
        Start symbol: start. *)

  | MenhirState082 : (((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_state
    (** State 082.
        Stack shape : If expr Then.
        Start symbol: start. *)

  | MenhirState083 : ((((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 083.
        Stack shape : If expr Then expr.
        Start symbol: start. *)

  | MenhirState084 : (((((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Else, _menhir_box_start) _menhir_state
    (** State 084.
        Stack shape : If expr Then expr Else.
        Start symbol: start. *)

  | MenhirState085 : ((((((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Else, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 085.
        Stack shape : If expr Then expr Else expr.
        Start symbol: start. *)

  | MenhirState086 : ((('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 086.
        Stack shape : LParen expr.
        Start symbol: start. *)

  | MenhirState087 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma, _menhir_box_start) _menhir_state
    (** State 087.
        Stack shape : expr Comma.
        Start symbol: start. *)

  | MenhirState088 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 088.
        Stack shape : expr Comma expr.
        Start symbol: start. *)

  | MenhirState092 : ((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 092.
        Stack shape : Let Id params let_types expr.
        Start symbol: start. *)

  | MenhirState093 : (((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In, _menhir_box_start) _menhir_state
    (** State 093.
        Stack shape : Let Id params let_types expr In.
        Start symbol: start. *)

  | MenhirState094 : ((((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 094.
        Stack shape : Let Id params let_types expr In expr.
        Start symbol: start. *)

  | MenhirState095 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 095.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState096 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_state
    (** State 096.
        Stack shape : Let Id params.
        Start symbol: start. *)

  | MenhirState098 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_state
    (** State 098.
        Stack shape : Let Id params let_types.
        Start symbol: start. *)

  | MenhirState099 : ((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 099.
        Stack shape : Let Id params let_types expr.
        Start symbol: start. *)

  | MenhirState100 : (((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In, _menhir_box_start) _menhir_state
    (** State 100.
        Stack shape : Let Id params let_types expr In.
        Start symbol: start. *)

  | MenhirState101 : ((((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 101.
        Stack shape : Let Id params let_types expr In expr.
        Start symbol: start. *)

  | MenhirState102 : ((('s, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 102.
        Stack shape : Match expr.
        Start symbol: start. *)

  | MenhirState103 : (((('s, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_With, _menhir_box_start) _menhir_state
    (** State 103.
        Stack shape : Match expr With.
        Start symbol: start. *)

  | MenhirState105 : (('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 105.
        Stack shape : Pipe Id.
        Start symbol: start. *)

  | MenhirState106 : (('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_state
    (** State 106.
        Stack shape : LParen.
        Start symbol: start. *)

  | MenhirState117 : ((('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_pattern_vars, _menhir_box_start) _menhir_state
    (** State 117.
        Stack shape : Pipe Id pattern_vars.
        Start symbol: start. *)

  | MenhirState120 : (('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_match_branch, _menhir_box_start) _menhir_state
    (** State 120.
        Stack shape : Pipe match_branch.
        Start symbol: start. *)

  | MenhirState127 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 127.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState128 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_state
    (** State 128.
        Stack shape : Let Id params.
        Start symbol: start. *)

  | MenhirState130 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_state
    (** State 130.
        Stack shape : Let Id params let_types.
        Start symbol: start. *)

  | MenhirState131 : ((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 131.
        Stack shape : Let Id params let_types expr.
        Start symbol: start. *)

  | MenhirState132 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 132.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState133 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_state
    (** State 133.
        Stack shape : Let Id params.
        Start symbol: start. *)

  | MenhirState135 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_state
    (** State 135.
        Stack shape : Let Id params let_types.
        Start symbol: start. *)

  | MenhirState136 : ((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 136.
        Stack shape : Let Id params let_types expr.
        Start symbol: start. *)

  | MenhirState139 : (('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 139.
        Stack shape : expr.
        Start symbol: start. *)

  | MenhirState144 : (('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_state
    (** State 144.
        Stack shape : binding.
        Start symbol: start. *)

  | MenhirState147 : ((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 147.
        Stack shape : binding Let Id.
        Start symbol: start. *)

  | MenhirState148 : (((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_state
    (** State 148.
        Stack shape : binding Let Id params.
        Start symbol: start. *)

  | MenhirState150 : ((((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_state
    (** State 150.
        Stack shape : binding Let Id params let_types.
        Start symbol: start. *)

  | MenhirState151 : (((((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 151.
        Stack shape : binding Let Id params let_types expr.
        Start symbol: start. *)

  | MenhirState152 : ((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 152.
        Stack shape : binding Let Id.
        Start symbol: start. *)

  | MenhirState153 : (((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_state
    (** State 153.
        Stack shape : binding Let Id params.
        Start symbol: start. *)

  | MenhirState155 : ((((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_state
    (** State 155.
        Stack shape : binding Let Id params let_types.
        Start symbol: start. *)

  | MenhirState156 : (((((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 156.
        Stack shape : binding Let Id params let_types expr.
        Start symbol: start. *)


and ('s, 'r) _menhir_cell1_app_expr = 
  | MenhirCell1_app_expr of 's * ('s, 'r) _menhir_state * (Ast.ast_expr)

and ('s, 'r) _menhir_cell1_binding = 
  | MenhirCell1_binding of 's * ('s, 'r) _menhir_state * (Ast.ast_binding)

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Ast.ast_expr)

and ('s, 'r) _menhir_cell1_let_types = 
  | MenhirCell1_let_types of 's * ('s, 'r) _menhir_state * (Ast.ast_type_expr list)

and 's _menhir_cell0_match_branch = 
  | MenhirCell0_match_branch of 's * (Ast.ast_match_branch)

and ('s, 'r) _menhir_cell1_param = 
  | MenhirCell1_param of 's * ('s, 'r) _menhir_state * (Ast.ast_param)

and ('s, 'r) _menhir_cell1_params = 
  | MenhirCell1_params of 's * ('s, 'r) _menhir_state * (Ast.ast_param list)

and ('s, 'r) _menhir_cell1_pattern_vars = 
  | MenhirCell1_pattern_vars of 's * ('s, 'r) _menhir_state * (Ast.ast_pattern_vars)

and ('s, 'r) _menhir_cell1_type_def = 
  | MenhirCell1_type_def of 's * ('s, 'r) _menhir_state * (string * Ast.ast_type_expr list)

and ('s, 'r) _menhir_cell1_type_expr = 
  | MenhirCell1_type_expr of 's * ('s, 'r) _menhir_state * (Ast.ast_type_expr)

and ('s, 'r) _menhir_cell1_And = 
  | MenhirCell1_And of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Colon = 
  | MenhirCell1_Colon of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Comma = 
  | MenhirCell1_Comma of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Concat = 
  | MenhirCell1_Concat of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Divide = 
  | MenhirCell1_Divide of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Else = 
  | MenhirCell1_Else of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Eq = 
  | MenhirCell1_Eq of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Fun = 
  | MenhirCell1_Fun of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_Id = 
  | MenhirCell0_Id of 's * (
# 42 "lib/parser.mly"
         (string)
# 546 "lib/parser.ml"
)

and ('s, 'r) _menhir_cell1_If = 
  | MenhirCell1_If of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_In = 
  | MenhirCell1_In of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LParen = 
  | MenhirCell1_LParen of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Let = 
  | MenhirCell1_Let of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Lt = 
  | MenhirCell1_Lt of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Match = 
  | MenhirCell1_Match of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Minus = 
  | MenhirCell1_Minus of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Mod = 
  | MenhirCell1_Mod of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Negate = 
  | MenhirCell1_Negate of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Not = 
  | MenhirCell1_Not of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Or = 
  | MenhirCell1_Or of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Pipe = 
  | MenhirCell1_Pipe of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Plus = 
  | MenhirCell1_Plus of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Then = 
  | MenhirCell1_Then of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Times = 
  | MenhirCell1_Times of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Type = 
  | MenhirCell1_Type of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_With = 
  | MenhirCell1_With of 's * ('s, 'r) _menhir_state

and _menhir_box_start = 
  | MenhirBox_start of (Ast.ast_start) [@@unboxed]

let _menhir_action_01 =
  fun a b ->
    (
# 203 "lib/parser.mly"
                              ( Appexpr (a, b))
# 608 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_02 =
  fun b ->
    (
# 204 "lib/parser.mly"
                ( b )
# 616 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_03 =
  fun () ->
    (
# 207 "lib/parser.mly"
                  ( EmptyParen)
# 624 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_04 =
  fun () ->
    (
# 208 "lib/parser.mly"
       ( True )
# 632 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_05 =
  fun () ->
    (
# 209 "lib/parser.mly"
        ( False )
# 640 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_06 =
  fun id ->
    (
# 210 "lib/parser.mly"
          ( Id id)
# 648 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_07 =
  fun v ->
    (
# 211 "lib/parser.mly"
          (Int v)
# 656 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_08 =
  fun s ->
    (
# 212 "lib/parser.mly"
             (String s)
# 664 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_09 =
  fun e ->
    (
# 213 "lib/parser.mly"
                             ( e )
# 672 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_10 =
  fun e id p t ->
    (
# 102 "lib/parser.mly"
                                                           (Letbinding (id, p, t, e))
# 680 "lib/parser.ml"
     : (Ast.ast_binding))

let _menhir_action_11 =
  fun e id p t ->
    (
# 103 "lib/parser.mly"
                                                                (Letrecbinding (id, p, t, e))
# 688 "lib/parser.ml"
     : (Ast.ast_binding))

let _menhir_action_12 =
  fun id s ->
    (
# 104 "lib/parser.mly"
                                  (Typebinding (id, s))
# 696 "lib/parser.ml"
     : (Ast.ast_binding))

let _menhir_action_13 =
  fun b bs ->
    (
# 98 "lib/parser.mly"
                                              ( b :: bs)
# 704 "lib/parser.ml"
     : (Ast.ast_binding list))

let _menhir_action_14 =
  fun b ->
    (
# 99 "lib/parser.mly"
                               (b::[])
# 712 "lib/parser.ml"
     : (Ast.ast_binding list))

let _menhir_action_15 =
  fun e1 e2 id ps ts ->
    (
# 147 "lib/parser.mly"
                                                                          ( Letexpr (id, ps, ts, e1, e2) )
# 720 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_16 =
  fun e1 e2 id ps ts ->
    (
# 148 "lib/parser.mly"
                                                                                ( Letrec (id, ps, ts, e1, e2) )
# 728 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_17 =
  fun e1 e2 e3 ->
    (
# 149 "lib/parser.mly"
                                                  ( Ifexpr(e1, e2, e3) )
# 736 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_18 =
  fun e p t ->
    (
# 150 "lib/parser.mly"
                                                        ( Funcexpr (p, t, e) )
# 744 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_19 =
  fun a ->
    (
# 152 "lib/parser.mly"
                ( a )
# 752 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_20 =
  fun e1 t ->
    (
# 153 "lib/parser.mly"
                                             ( Tupleexpr (e1 :: t))
# 760 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_21 =
  fun e1 e2 ->
    (
# 154 "lib/parser.mly"
                            ( Binop (e1, Sub, e2) )
# 768 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_22 =
  fun e1 e2 ->
    (
# 155 "lib/parser.mly"
                           ( Binop (e1, Add, e2) )
# 776 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_23 =
  fun e1 e2 ->
    (
# 156 "lib/parser.mly"
                            ( Binop (e1, Mul, e2) )
# 784 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_24 =
  fun e1 e2 ->
    (
# 157 "lib/parser.mly"
                             ( Binop (e1, Div, e2) )
# 792 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_25 =
  fun e1 e2 ->
    (
# 158 "lib/parser.mly"
                         ( Binop (e1, Lessthan, e2) )
# 800 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_26 =
  fun e1 e2 ->
    (
# 159 "lib/parser.mly"
                          ( Binop (e1, Modulo, e2) )
# 808 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_27 =
  fun e1 e2 ->
    (
# 160 "lib/parser.mly"
                         ( Binop (e1, Equal, e2) )
# 816 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_28 =
  fun e1 e2 ->
    (
# 161 "lib/parser.mly"
                             ( Binop (e1, Concatenation, e2) )
# 824 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_29 =
  fun e1 e2 ->
    (
# 162 "lib/parser.mly"
                          ( Binop (e1, LAnd, e2) )
# 832 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_30 =
  fun e1 e2 ->
    (
# 163 "lib/parser.mly"
                         ( Binop (e1, LOr, e2) )
# 840 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_31 =
  fun e ->
    (
# 164 "lib/parser.mly"
               ( Unop (UNot, e) )
# 848 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_32 =
  fun e ->
    (
# 165 "lib/parser.mly"
                 ( Unop (UNegate, e) )
# 856 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_33 =
  fun e v ->
    (
# 173 "lib/parser.mly"
                                            ( Match (e, v))
# 864 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_34 =
  fun t ->
    (
# 248 "lib/parser.mly"
                   (t)
# 872 "lib/parser.ml"
     : (Ast.ast_type_expr list))

let _menhir_action_35 =
  fun () ->
    (
# 249 "lib/parser.mly"
  ([])
# 880 "lib/parser.ml"
     : (Ast.ast_type_expr list))

let _menhir_action_36 =
  fun e id p ->
    (
# 188 "lib/parser.mly"
                                                    (Branch (id, p, e))
# 888 "lib/parser.ml"
     : (Ast.ast_match_branch))

let _menhir_action_37 =
  fun m ->
    (
# 179 "lib/parser.mly"
                         (m :: [])
# 896 "lib/parser.ml"
     : (Ast.ast_match_branch list))

let _menhir_action_38 =
  fun m ms ->
    (
# 180 "lib/parser.mly"
                                              (m::ms)
# 904 "lib/parser.ml"
     : (Ast.ast_match_branch list))

let _menhir_action_39 =
  fun id ->
    (
# 125 "lib/parser.mly"
           (SingleParam id)
# 912 "lib/parser.ml"
     : (Ast.ast_param))

let _menhir_action_40 =
  fun id t ->
    (
# 126 "lib/parser.mly"
                                           (TypedParam (id, t))
# 920 "lib/parser.ml"
     : (Ast.ast_param))

let _menhir_action_41 =
  fun () ->
    (
# 121 "lib/parser.mly"
   ([])
# 928 "lib/parser.ml"
     : (Ast.ast_param list))

let _menhir_action_42 =
  fun p ps ->
    (
# 122 "lib/parser.mly"
                         (p :: ps)
# 936 "lib/parser.ml"
     : (Ast.ast_param list))

let _menhir_action_43 =
  fun t ->
    (
# 196 "lib/parser.mly"
                                    (t)
# 944 "lib/parser.ml"
     : (string list))

let _menhir_action_44 =
  fun e1 e2 ->
    (
# 199 "lib/parser.mly"
                           ( e1 :: e2 :: [] )
# 952 "lib/parser.ml"
     : (string list))

let _menhir_action_45 =
  fun e t ->
    (
# 200 "lib/parser.mly"
                                  (e :: t)
# 960 "lib/parser.ml"
     : (string list))

let _menhir_action_46 =
  fun () ->
    (
# 191 "lib/parser.mly"
  (EmptyPattern)
# 968 "lib/parser.ml"
     : (Ast.ast_pattern_vars))

let _menhir_action_47 =
  fun id ->
    (
# 192 "lib/parser.mly"
          (SinglePattern id)
# 976 "lib/parser.ml"
     : (Ast.ast_pattern_vars))

let _menhir_action_48 =
  fun t ->
    (
# 193 "lib/parser.mly"
                   ( ListPattern t )
# 984 "lib/parser.ml"
     : (Ast.ast_pattern_vars))

let _menhir_action_49 =
  fun b ->
    (
# 95 "lib/parser.mly"
                     ( Program b )
# 992 "lib/parser.ml"
     : (Ast.ast_program))

let _menhir_action_50 =
  fun a ->
    (
# 91 "lib/parser.mly"
              (P a)
# 1000 "lib/parser.ml"
     : (Ast.ast_start))

let _menhir_action_51 =
  fun b ->
    (
# 92 "lib/parser.mly"
                (E b)
# 1008 "lib/parser.ml"
     : (Ast.ast_start))

let _menhir_action_52 =
  fun e ->
    (
# 217 "lib/parser.mly"
                    ([e])
# 1016 "lib/parser.ml"
     : (Ast.ast_expr list))

let _menhir_action_53 =
  fun e t ->
    (
# 218 "lib/parser.mly"
                                    ( e :: t)
# 1024 "lib/parser.ml"
     : (Ast.ast_expr list))

let _menhir_action_54 =
  fun id ->
    (
# 111 "lib/parser.mly"
                 ((id, []))
# 1032 "lib/parser.ml"
     : (string * Ast.ast_type_expr list))

let _menhir_action_55 =
  fun id t ->
    (
# 112 "lib/parser.mly"
                                 ((id,  t))
# 1040 "lib/parser.ml"
     : (string * Ast.ast_type_expr list))

let _menhir_action_56 =
  fun t ->
    (
# 107 "lib/parser.mly"
                (t::[])
# 1048 "lib/parser.ml"
     : ((string * Ast.ast_type_expr list) list))

let _menhir_action_57 =
  fun t ts ->
    (
# 108 "lib/parser.mly"
                               (t::ts)
# 1056 "lib/parser.ml"
     : ((string * Ast.ast_type_expr list) list))

let _menhir_action_58 =
  fun () ->
    (
# 238 "lib/parser.mly"
       (TypeInt)
# 1064 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_59 =
  fun () ->
    (
# 239 "lib/parser.mly"
        (TypeBool)
# 1072 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_60 =
  fun () ->
    (
# 240 "lib/parser.mly"
          (TypeString)
# 1080 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_61 =
  fun () ->
    (
# 241 "lib/parser.mly"
        (TypeUnit)
# 1088 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_62 =
  fun id ->
    (
# 242 "lib/parser.mly"
          (TypeId id)
# 1096 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_63 =
  fun t ->
    (
# 243 "lib/parser.mly"
                               (t)
# 1104 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_64 =
  fun t1 t2 ->
    (
# 244 "lib/parser.mly"
                                       (Func (t1, t2) )
# 1112 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_65 =
  fun t ts ->
    (
# 245 "lib/parser.mly"
                                       (Etype (t,ts))
# 1120 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_66 =
  fun () ->
    (
# 252 "lib/parser.mly"
  ([])
# 1128 "lib/parser.ml"
     : (Ast.ast_type_expr list))

let _menhir_action_67 =
  fun t ->
    (
# 253 "lib/parser.mly"
                ( t :: [] )
# 1136 "lib/parser.ml"
     : (Ast.ast_type_expr list))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | And ->
        "And"
    | Arrow ->
        "Arrow"
    | Colon ->
        "Colon"
    | Comma ->
        "Comma"
    | Concat ->
        "Concat"
    | Divide ->
        "Divide"
    | DoubleArrow ->
        "DoubleArrow"
    | DoubleSemicolon ->
        "DoubleSemicolon"
    | EOF ->
        "EOF"
    | Else ->
        "Else"
    | Eq ->
        "Eq"
    | False ->
        "False"
    | Fun ->
        "Fun"
    | Id _ ->
        "Id"
    | If ->
        "If"
    | In ->
        "In"
    | Int _ ->
        "Int"
    | LParen ->
        "LParen"
    | Let ->
        "Let"
    | Lt ->
        "Lt"
    | Match ->
        "Match"
    | Minus ->
        "Minus"
    | Mod ->
        "Mod"
    | Negate ->
        "Negate"
    | Not ->
        "Not"
    | Of ->
        "Of"
    | Or ->
        "Or"
    | Pipe ->
        "Pipe"
    | Plus ->
        "Plus"
    | RParen ->
        "RParen"
    | Rec ->
        "Rec"
    | String _ ->
        "String"
    | TBool ->
        "TBool"
    | TInt ->
        "TInt"
    | TString ->
        "TString"
    | TUnit ->
        "TUnit"
    | Then ->
        "Then"
    | Times ->
        "Times"
    | True ->
        "True"
    | Type ->
        "Type"
    | With ->
        "With"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_goto_start : type  ttv_stack. ttv_stack -> _ -> _menhir_box_start =
    fun _menhir_stack _v ->
      MenhirBox_start _v
  
  let _menhir_run_141 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_start =
    fun _menhir_stack _v ->
      let b = _v in
      let _v = _menhir_action_49 b in
      let a = _v in
      let _v = _menhir_action_50 a in
      _menhir_goto_start _menhir_stack _v
  
  let rec _menhir_goto_bindings : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState144 ->
          _menhir_run_157 _menhir_stack _v
      | MenhirState000 ->
          _menhir_run_141 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_157 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_binding -> _ -> _menhir_box_start =
    fun _menhir_stack _v ->
      let MenhirCell1_binding (_menhir_stack, _menhir_s, b) = _menhir_stack in
      let bs = _v in
      let _v = _menhir_action_13 b bs in
      _menhir_goto_bindings _menhir_stack _v _menhir_s
  
  let rec _menhir_run_001 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Type (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Id _v ->
          let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Eq ->
              let _menhir_s = MenhirState003 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Pipe ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_004 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Id _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Of ->
              let _menhir_stack = MenhirCell1_Pipe (_menhir_stack, _menhir_s) in
              let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TUnit ->
                  _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | TString ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | TInt ->
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | TBool ->
                  _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | LParen ->
                  _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | Id _v_0 ->
                  _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState006
              | DoubleSemicolon | Pipe ->
                  let _v_1 = _menhir_action_66 () in
                  _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
              | _ ->
                  _eRR ())
          | DoubleSemicolon | Pipe ->
              let id = _v in
              let _v = _menhir_action_54 id in
              _menhir_goto_type_def _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_007 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_61 () in
      _menhir_goto_type_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_type_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState034 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState006 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState016 ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState014 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState011 ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_020 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_type_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Arrow ->
          let _menhir_stack = MenhirCell1_type_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DoubleArrow | DoubleSemicolon | Eq | Pipe | RParen ->
          let t = _v in
          let _v = _menhir_action_67 t in
          _menhir_goto_types _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_type_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState014 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TUnit ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TString ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TInt ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TBool ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_60 () in
      _menhir_goto_type_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_009 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_58 () in
      _menhir_goto_type_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_010 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_59 () in
      _menhir_goto_type_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_011 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState011 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TUnit ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TString ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TInt ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TBool ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_012 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let id = _v in
      let _v = _menhir_action_62 id in
      _menhir_goto_type_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_016 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_type_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState016 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TUnit ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TString ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TInt ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TBool ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_types : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState034 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState006 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_035 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Colon -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Colon (_menhir_stack, _menhir_s) = _menhir_stack in
      let t = _v in
      let _v = _menhir_action_34 t in
      _menhir_goto_let_types _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_let_types : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState153 ->
          _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState148 ->
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState133 ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState128 ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState096 ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState033 ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_154 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_let_types (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState155 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_024 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_04 () in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_base_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState054 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState000 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState155 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState150 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState130 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState028 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState117 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState098 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState100 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState093 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState087 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState082 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState066 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState060 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState064 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_078 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_app_expr -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_app_expr (_menhir_stack, _menhir_s, a) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_01 a b in
      _menhir_goto_app_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_app_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | True ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | String _v_0 ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState054
      | LParen ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, MenhirState054) in
          let _menhir_s = MenhirState055 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | RParen ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
          | Not ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Int _v_4 ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState054
      | Id _v_5 ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState054
      | False ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | And | Comma | Concat | Divide | DoubleSemicolon | EOF | Else | Eq | In | Lt | Minus | Mod | Or | Pipe | Plus | RParen | Then | Times | With ->
          let a = _v in
          let _v = _menhir_action_19 a in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_025 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_08 s in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_043 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_LParen -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_03 () in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_026 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Not (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState026 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_027 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Negate (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState027 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_028 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Match (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState028 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Let (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Rec ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Id _v ->
              let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LParen ->
                  _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
              | Id _v_0 ->
                  _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState031
              | Colon | Eq ->
                  let _v_1 = _menhir_action_41 () in
                  _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState031 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | Id _v ->
          let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LParen ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
          | Id _v_2 ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState095
          | Colon | Eq ->
              let _v_3 = _menhir_action_41 () in
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState095 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Id _v ->
          let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Colon ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
          | RParen ->
              let _v_0 = _menhir_action_35 () in
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Colon (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TUnit ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | TString ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | TInt ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | TBool ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | LParen ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | Id _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034
      | DoubleArrow | Eq | RParen ->
          let _v = _menhir_action_66 () in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_LParen _menhir_cell0_Id -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_40 id t in
          _menhir_goto_param _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_param : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_param (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LParen ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | Id _v_0 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState079
      | Colon | DoubleArrow | Eq ->
          let _v_1 = _menhir_action_41 () in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let id = _v in
      let _v = _menhir_action_39 id in
      _menhir_goto_param _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_080 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_param -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_param (_menhir_stack, _menhir_s, p) = _menhir_stack in
      let ps = _v in
      let _v = _menhir_action_42 p ps in
      _menhir_goto_params _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_params : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState152 ->
          _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState147 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState127 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState047 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_153 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_params (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | Eq ->
          let _v_0 = _menhir_action_35 () in
          _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState153 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_148 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_params (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | Eq ->
          let _v_0 = _menhir_action_35 () in
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState148 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_149 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_let_types (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState150 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState042 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | RParen ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let v = _v in
      let _v = _menhir_action_07 v in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_045 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_If (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState045 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let id = _v in
      let _v = _menhir_action_06 id in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_047 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Fun (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LParen ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | Id _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047
      | Colon | DoubleArrow ->
          let _v = _menhir_action_41 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Fun as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_params (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | DoubleArrow ->
          let _v_0 = _menhir_action_35 () in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState048 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_params as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_let_types (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DoubleArrow ->
          let _menhir_s = MenhirState050 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_05 () in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_133 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_params (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | Eq ->
          let _v_0 = _menhir_action_35 () in
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState133 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_134 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_let_types (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState135 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_128 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_params (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | Eq ->
          let _v_0 = _menhir_action_35 () in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState128 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_129 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_let_types (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState130 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_096 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_params (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | Eq ->
          let _v_0 = _menhir_action_35 () in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState096 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_097 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_let_types (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState098 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_params (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | Eq ->
          let _v_0 = _menhir_action_35 () in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState039 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_let_types (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState041 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState155 ->
          _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState150 ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState130 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState027 ->
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState117 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState028 ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState100 ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState098 ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState093 ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState087 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState082 ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState066 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState064 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState062 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState060 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState055 ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_156 : type  ttv_stack. (((((ttv_stack, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | DoubleSemicolon ->
          let MenhirCell1_let_types (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_params (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_10 e id p t in
          _menhir_goto_binding _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Times (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState057 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Plus (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState060 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_066 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Or (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState066 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Mod (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState062 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Minus (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState068 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Lt (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState070 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_074 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Eq (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState074 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Divide (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState064 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_072 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Concat (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState072 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_076 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_And (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState076 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_binding : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Type ->
          let _menhir_stack = MenhirCell1_binding (_menhir_stack, _menhir_s, _v) in
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState144
      | Let ->
          let _menhir_stack = MenhirCell1_binding (_menhir_stack, _menhir_s, _v) in
          let _menhir_stack = MenhirCell1_Let (_menhir_stack, MenhirState144) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Rec ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Id _v_0 ->
                  let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v_0) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LParen ->
                      _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
                  | Id _v_1 ->
                      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState147
                  | Colon | Eq ->
                      let _v_2 = _menhir_action_41 () in
                      _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState147 _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | Id _v_3 ->
              let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v_3) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LParen ->
                  _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
              | Id _v_4 ->
                  _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState152
              | Colon | Eq ->
                  let _v_5 = _menhir_action_41 () in
                  _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState152 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | EOF ->
          let b = _v in
          let _v = _menhir_action_14 b in
          _menhir_goto_bindings _menhir_stack _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_151 : type  ttv_stack. (((((ttv_stack, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | DoubleSemicolon ->
          let MenhirCell1_let_types (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_params (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_11 e id p t in
          _menhir_goto_binding _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_139 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | EOF ->
          let b = _v in
          let _v = _menhir_action_51 b in
          _menhir_goto_start _menhir_stack _v
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | _ ->
          _eRR ()
  
  and _menhir_run_136 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | In ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | DoubleSemicolon ->
          let MenhirCell1_let_types (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_params (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_10 e id p t in
          _menhir_goto_binding _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_100 : type  ttv_stack. (((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_In (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState100 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_131 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | In ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | DoubleSemicolon ->
          let MenhirCell1_let_types (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_params (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_11 e id p t in
          _menhir_goto_binding _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_093 : type  ttv_stack. (((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_In (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState093 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_124 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Not -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Not (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_31 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_123 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Negate -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Negate (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_32 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_118 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_pattern_vars -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_pattern_vars (_menhir_stack, _, p) = _menhir_stack in
      let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_36 e id p in
      match (_tok : MenhirBasics.token) with
      | Pipe ->
          let _menhir_stack = MenhirCell0_match_branch (_menhir_stack, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | And | Comma | Concat | Divide | DoubleSemicolon | EOF | Else | Eq | In | Lt | Minus | Mod | Or | Plus | RParen | Then | Times | With ->
          let MenhirCell1_Pipe (_menhir_stack, _menhir_s) = _menhir_stack in
          let m = _v in
          let _v = _menhir_action_37 m in
          _menhir_goto_match_branches _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_104 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Pipe (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Id _v ->
          let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LParen ->
              _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
          | Id _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_menhir_s, id) = (MenhirState105, _v_0) in
              let _v = _menhir_action_47 id in
              _menhir_goto_pattern_vars _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | DoubleArrow ->
              let _menhir_s = MenhirState105 in
              let _v = _menhir_action_46 () in
              _menhir_goto_pattern_vars _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_106 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LParen ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Id _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Comma ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Id _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (e2, e1) = (_v_0, _v) in
                  let _v = _menhir_action_44 e1 e2 in
                  _menhir_goto_pattern_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_pattern_var : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_LParen -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_43 t in
          _menhir_goto_pattern_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_pattern_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState105 ->
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_119 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let t = _v in
      let _v = _menhir_action_48 t in
      _menhir_goto_pattern_vars _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_pattern_vars : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_pattern_vars (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DoubleArrow ->
          let _menhir_s = MenhirState117 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_112 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_LParen -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | Comma ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Id _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (t, e) = (_v, _v_0) in
              let _v = _menhir_action_45 e t in
              _menhir_goto_pattern_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_match_branches : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState103 ->
          _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState120 ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_122 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_With -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_With (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_Match (_menhir_stack, _menhir_s) = _menhir_stack in
      let v = _v in
      let _v = _menhir_action_33 e v in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_121 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_match_branch -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_match_branch (_menhir_stack, m) = _menhir_stack in
      let MenhirCell1_Pipe (_menhir_stack, _menhir_s) = _menhir_stack in
      let ms = _v in
      let _v = _menhir_action_38 m ms in
      _menhir_goto_match_branches _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_102 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Match as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | With ->
          let _menhir_stack = MenhirCell1_With (_menhir_stack, MenhirState102) in
          let _menhir_s = MenhirState103 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Pipe ->
              _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Times ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Plus ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Or ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Mod ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Minus ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Lt ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Eq ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Divide ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Concat ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | And ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | _ ->
          _eRR ()
  
  and _menhir_run_101 : type  ttv_stack. ((((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Comma | DoubleSemicolon | EOF | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_In (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_let_types (_menhir_stack, _, ts) = _menhir_stack in
          let MenhirCell1_params (_menhir_stack, _, ps) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_15 e1 e2 id ps ts in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_099 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Plus ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Or ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Mod ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Minus ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Lt ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | In ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Eq ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Divide ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Concat ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | And ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | _ ->
          _eRR ()
  
  and _menhir_run_094 : type  ttv_stack. ((((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Comma | DoubleSemicolon | EOF | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_In (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_let_types (_menhir_stack, _, ts) = _menhir_stack in
          let MenhirCell1_params (_menhir_stack, _, ps) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_16 e1 e2 id ps ts in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_092 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Plus ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Or ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Mod ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Minus ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Lt ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | In ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Eq ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Divide ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Concat ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | And ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | _ ->
          _eRR ()
  
  and _menhir_run_088 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | Comma ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | RParen ->
          let MenhirCell1_Comma (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_52 e in
          _menhir_goto_tuple_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Comma (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState087 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_tuple_expr : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState086 ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState088 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_090 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
      let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
      let t = _v in
      let _v = _menhir_action_20 e1 t in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_089 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_Comma (_menhir_stack, _menhir_s) = _menhir_stack in
      let t = _v in
      let _v = _menhir_action_53 e t in
      _menhir_goto_tuple_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_086 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | RParen ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Plus ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | Or ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | Mod ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | Minus ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | Lt ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | Eq ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | Divide ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | Concat ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | Comma ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | And ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_09 e in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_085 : type  ttv_stack. ((((((ttv_stack, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Else as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Comma | DoubleSemicolon | EOF | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_Else (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e2) = _menhir_stack in
          let MenhirCell1_Then (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_If (_menhir_stack, _menhir_s) = _menhir_stack in
          let e3 = _v in
          let _v = _menhir_action_17 e1 e2 e3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | Plus ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | Or ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | Mod ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | Minus ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | Lt ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | Eq ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | Else ->
          let _menhir_stack = MenhirCell1_Else (_menhir_stack, MenhirState083) in
          let _menhir_s = MenhirState084 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Divide ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | Concat ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | And ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_If as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | Then ->
          let _menhir_stack = MenhirCell1_Then (_menhir_stack, MenhirState081) in
          let _menhir_s = MenhirState082 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Plus ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | Or ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | Mod ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | Minus ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | Lt ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | Eq ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | Divide ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | Concat ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | And ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_And as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | And | Comma | DoubleSemicolon | EOF | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_And (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_29 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_075 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Eq as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | And | Comma | DoubleSemicolon | EOF | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_Eq (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_27 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Concat as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | And | Comma | Concat | DoubleSemicolon | EOF | Else | Eq | In | Lt | Minus | Or | Pipe | Plus | RParen | Then | With ->
          let MenhirCell1_Concat (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_28 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Lt as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | And | Comma | DoubleSemicolon | EOF | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_Lt (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_25 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Minus as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | And | Comma | Concat | DoubleSemicolon | EOF | Else | Eq | In | Lt | Minus | Or | Pipe | Plus | RParen | Then | With ->
          let MenhirCell1_Minus (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_21 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Or as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Comma | DoubleSemicolon | EOF | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_Or (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_30 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Divide -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Divide (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_24 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_063 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Mod -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Mod (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_26 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_061 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Plus as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | And | Comma | Concat | DoubleSemicolon | EOF | Else | Eq | In | Lt | Minus | Or | Pipe | Plus | RParen | Then | With ->
          let MenhirCell1_Plus (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_22 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Times -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Times (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_23 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_056 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_app_expr, _menhir_box_start) _menhir_cell1_LParen as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | RParen ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Plus ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | Or ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | Mod ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | Minus ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | Lt ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | Eq ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | Divide ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | Concat ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | And ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_let_types (_menhir_stack, _, t) = _menhir_stack in
      let MenhirCell1_params (_menhir_stack, _, p) = _menhir_stack in
      let MenhirCell1_Fun (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_18 e p t in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_053 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let b = _v in
      let _v = _menhir_action_02 b in
      _menhir_goto_app_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_019 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
      let MenhirCell1_Pipe (_menhir_stack, _menhir_s) = _menhir_stack in
      let t = _v in
      let _v = _menhir_action_55 id t in
      _menhir_goto_type_def _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_type_def : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Pipe ->
          let _menhir_stack = MenhirCell1_type_def (_menhir_stack, _menhir_s, _v) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | DoubleSemicolon ->
          let t = _v in
          let _v = _menhir_action_56 t in
          _menhir_goto_type_defs _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_type_defs : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState022 ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState003 ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_023 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_type_def -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_type_def (_menhir_stack, _menhir_s, t) = _menhir_stack in
      let ts = _v in
      let _v = _menhir_action_57 t ts in
      _menhir_goto_type_defs _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_021 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Type _menhir_cell0_Id -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
      let MenhirCell1_Type (_menhir_stack, _menhir_s) = _menhir_stack in
      let s = _v in
      let _v = _menhir_action_12 id s in
      _menhir_goto_binding _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_017 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_type_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Arrow ->
          let _menhir_stack = MenhirCell1_type_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DoubleArrow | DoubleSemicolon | Eq | Pipe | RParen | Times ->
          let MenhirCell1_type_expr (_menhir_stack, _menhir_s, t1) = _menhir_stack in
          let t2 = _v in
          let _v = _menhir_action_64 t1 t2 in
          _menhir_goto_type_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_015 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_type_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Arrow ->
          let _menhir_stack = MenhirCell1_type_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DoubleArrow | DoubleSemicolon | Eq | Pipe | RParen | Times ->
          let MenhirCell1_type_expr (_menhir_stack, _menhir_s, t) = _menhir_stack in
          let ts = _v in
          let _v = _menhir_action_65 t ts in
          _menhir_goto_type_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_013 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_type_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_63 t in
          _menhir_goto_type_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Arrow ->
          let _menhir_stack = MenhirCell1_type_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  let _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Type ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | True ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | String _v ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000
      | Not ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | Negate ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | Match ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | Let ->
          let _menhir_stack = MenhirCell1_Let (_menhir_stack, MenhirState000) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Rec ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Id _v ->
                  let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LParen ->
                      _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
                  | Id _v_0 ->
                      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState127
                  | Colon | Eq ->
                      let _v_1 = _menhir_action_41 () in
                      _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState127 _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | Id _v ->
              let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LParen ->
                  _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
              | Id _v_2 ->
                  _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState132
              | Colon | Eq ->
                  let _v_3 = _menhir_action_41 () in
                  _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState132 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | LParen ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | Int _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000
      | If ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | Id _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000
      | Fun ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | False ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | _ ->
          _eRR ()
  
end

let start =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_start v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
