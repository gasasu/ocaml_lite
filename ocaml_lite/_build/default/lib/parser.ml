
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

  | MenhirState015 : (('s, _menhir_box_start) _menhir_cell1_type_app, _menhir_box_start) _menhir_state
    (** State 015.
        Stack shape : type_app.
        Start symbol: start. *)

  | MenhirState020 : (('s, _menhir_box_start) _menhir_cell1_base, _menhir_box_start) _menhir_state
    (** State 020.
        Stack shape : base.
        Start symbol: start. *)

  | MenhirState025 : ((('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_cell1_etype, _menhir_box_start) _menhir_state
    (** State 025.
        Stack shape : LParen etype.
        Start symbol: start. *)

  | MenhirState026 : (((('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_cell1_etype, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_state
    (** State 026.
        Stack shape : LParen etype LParen.
        Start symbol: start. *)

  | MenhirState031 : (('s, _menhir_box_start) _menhir_cell1_type_def, _menhir_box_start) _menhir_state
    (** State 031.
        Stack shape : type_def.
        Start symbol: start. *)

  | MenhirState035 : (('s, _menhir_box_start) _menhir_cell1_Not, _menhir_box_start) _menhir_state
    (** State 035.
        Stack shape : Not.
        Start symbol: start. *)

  | MenhirState036 : (('s, _menhir_box_start) _menhir_cell1_Negate, _menhir_box_start) _menhir_state
    (** State 036.
        Stack shape : Negate.
        Start symbol: start. *)

  | MenhirState037 : (('s, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_state
    (** State 037.
        Stack shape : Match.
        Start symbol: start. *)

  | MenhirState040 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 040.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState042 : (('s, _menhir_box_start) _menhir_cell1_LParen _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 042.
        Stack shape : LParen Id.
        Start symbol: start. *)

  | MenhirState043 : (('s, _menhir_box_start) _menhir_cell1_Colon, _menhir_box_start) _menhir_state
    (** State 043.
        Stack shape : Colon.
        Start symbol: start. *)

  | MenhirState048 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_state
    (** State 048.
        Stack shape : Let Id params.
        Start symbol: start. *)

  | MenhirState050 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_state
    (** State 050.
        Stack shape : Let Id params let_types.
        Start symbol: start. *)

  | MenhirState051 : (('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_state
    (** State 051.
        Stack shape : LParen.
        Start symbol: start. *)

  | MenhirState054 : (('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_state
    (** State 054.
        Stack shape : If.
        Start symbol: start. *)

  | MenhirState056 : (('s, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_state
    (** State 056.
        Stack shape : Fun.
        Start symbol: start. *)

  | MenhirState057 : ((('s, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_state
    (** State 057.
        Stack shape : Fun params.
        Start symbol: start. *)

  | MenhirState059 : (((('s, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_state
    (** State 059.
        Stack shape : Fun params let_types.
        Start symbol: start. *)

  | MenhirState061 : ((((('s, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 061.
        Stack shape : Fun params let_types expr.
        Start symbol: start. *)

  | MenhirState062 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Times, _menhir_box_start) _menhir_state
    (** State 062.
        Stack shape : expr Times.
        Start symbol: start. *)

  | MenhirState065 : (('s, _menhir_box_start) _menhir_cell1_app_expr, _menhir_box_start) _menhir_state
    (** State 065.
        Stack shape : app_expr.
        Start symbol: start. *)

  | MenhirState067 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Plus, _menhir_box_start) _menhir_state
    (** State 067.
        Stack shape : expr Plus.
        Start symbol: start. *)

  | MenhirState068 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Plus, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 068.
        Stack shape : expr Plus expr.
        Start symbol: start. *)

  | MenhirState069 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Mod, _menhir_box_start) _menhir_state
    (** State 069.
        Stack shape : expr Mod.
        Start symbol: start. *)

  | MenhirState071 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Divide, _menhir_box_start) _menhir_state
    (** State 071.
        Stack shape : expr Divide.
        Start symbol: start. *)

  | MenhirState073 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Or, _menhir_box_start) _menhir_state
    (** State 073.
        Stack shape : expr Or.
        Start symbol: start. *)

  | MenhirState074 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Or, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 074.
        Stack shape : expr Or expr.
        Start symbol: start. *)

  | MenhirState075 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Minus, _menhir_box_start) _menhir_state
    (** State 075.
        Stack shape : expr Minus.
        Start symbol: start. *)

  | MenhirState076 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Minus, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 076.
        Stack shape : expr Minus expr.
        Start symbol: start. *)

  | MenhirState077 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Lt, _menhir_box_start) _menhir_state
    (** State 077.
        Stack shape : expr Lt.
        Start symbol: start. *)

  | MenhirState078 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Lt, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 078.
        Stack shape : expr Lt expr.
        Start symbol: start. *)

  | MenhirState079 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Concat, _menhir_box_start) _menhir_state
    (** State 079.
        Stack shape : expr Concat.
        Start symbol: start. *)

  | MenhirState080 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Concat, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 080.
        Stack shape : expr Concat expr.
        Start symbol: start. *)

  | MenhirState081 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Eq, _menhir_box_start) _menhir_state
    (** State 081.
        Stack shape : expr Eq.
        Start symbol: start. *)

  | MenhirState082 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Eq, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 082.
        Stack shape : expr Eq expr.
        Start symbol: start. *)

  | MenhirState083 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_And, _menhir_box_start) _menhir_state
    (** State 083.
        Stack shape : expr And.
        Start symbol: start. *)

  | MenhirState084 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_And, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 084.
        Stack shape : expr And expr.
        Start symbol: start. *)

  | MenhirState085 : (('s, _menhir_box_start) _menhir_cell1_param, _menhir_box_start) _menhir_state
    (** State 085.
        Stack shape : param.
        Start symbol: start. *)

  | MenhirState087 : ((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 087.
        Stack shape : If expr.
        Start symbol: start. *)

  | MenhirState088 : (((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_state
    (** State 088.
        Stack shape : If expr Then.
        Start symbol: start. *)

  | MenhirState089 : ((((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 089.
        Stack shape : If expr Then expr.
        Start symbol: start. *)

  | MenhirState090 : (((((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Else, _menhir_box_start) _menhir_state
    (** State 090.
        Stack shape : If expr Then expr Else.
        Start symbol: start. *)

  | MenhirState091 : ((((((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Else, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 091.
        Stack shape : If expr Then expr Else expr.
        Start symbol: start. *)

  | MenhirState092 : ((('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 092.
        Stack shape : LParen expr.
        Start symbol: start. *)

  | MenhirState094 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma, _menhir_box_start) _menhir_state
    (** State 094.
        Stack shape : expr Comma.
        Start symbol: start. *)

  | MenhirState095 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 095.
        Stack shape : expr Comma expr.
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

  | MenhirState102 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 102.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState103 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_state
    (** State 103.
        Stack shape : Let Id params.
        Start symbol: start. *)

  | MenhirState105 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_state
    (** State 105.
        Stack shape : Let Id params let_types.
        Start symbol: start. *)

  | MenhirState106 : ((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 106.
        Stack shape : Let Id params let_types expr.
        Start symbol: start. *)

  | MenhirState107 : (((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In, _menhir_box_start) _menhir_state
    (** State 107.
        Stack shape : Let Id params let_types expr In.
        Start symbol: start. *)

  | MenhirState108 : ((((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 108.
        Stack shape : Let Id params let_types expr In expr.
        Start symbol: start. *)

  | MenhirState109 : ((('s, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 109.
        Stack shape : Match expr.
        Start symbol: start. *)

  | MenhirState110 : (((('s, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_With, _menhir_box_start) _menhir_state
    (** State 110.
        Stack shape : Match expr With.
        Start symbol: start. *)

  | MenhirState112 : (('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 112.
        Stack shape : Pipe Id.
        Start symbol: start. *)

  | MenhirState113 : (('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_state
    (** State 113.
        Stack shape : LParen.
        Start symbol: start. *)

  | MenhirState115 : (('s, _menhir_box_start) _menhir_cell1_Id, _menhir_box_start) _menhir_state
    (** State 115.
        Stack shape : Id.
        Start symbol: start. *)

  | MenhirState124 : ((('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_pattern_vars, _menhir_box_start) _menhir_state
    (** State 124.
        Stack shape : Pipe Id pattern_vars.
        Start symbol: start. *)

  | MenhirState125 : (((('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_pattern_vars, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 125.
        Stack shape : Pipe Id pattern_vars expr.
        Start symbol: start. *)

  | MenhirState127 : (('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_match_branch, _menhir_box_start) _menhir_state
    (** State 127.
        Stack shape : Pipe match_branch.
        Start symbol: start. *)

  | MenhirState134 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 134.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState135 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_state
    (** State 135.
        Stack shape : Let Id params.
        Start symbol: start. *)

  | MenhirState137 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_state
    (** State 137.
        Stack shape : Let Id params let_types.
        Start symbol: start. *)

  | MenhirState138 : ((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 138.
        Stack shape : Let Id params let_types expr.
        Start symbol: start. *)

  | MenhirState139 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 139.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState140 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_state
    (** State 140.
        Stack shape : Let Id params.
        Start symbol: start. *)

  | MenhirState142 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_state
    (** State 142.
        Stack shape : Let Id params let_types.
        Start symbol: start. *)

  | MenhirState143 : ((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 143.
        Stack shape : Let Id params let_types expr.
        Start symbol: start. *)

  | MenhirState146 : (('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 146.
        Stack shape : expr.
        Start symbol: start. *)

  | MenhirState151 : (('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_state
    (** State 151.
        Stack shape : binding.
        Start symbol: start. *)

  | MenhirState154 : ((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 154.
        Stack shape : binding Let Id.
        Start symbol: start. *)

  | MenhirState155 : (((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_state
    (** State 155.
        Stack shape : binding Let Id params.
        Start symbol: start. *)

  | MenhirState157 : ((((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_state
    (** State 157.
        Stack shape : binding Let Id params let_types.
        Start symbol: start. *)

  | MenhirState158 : (((((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 158.
        Stack shape : binding Let Id params let_types expr.
        Start symbol: start. *)

  | MenhirState159 : ((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 159.
        Stack shape : binding Let Id.
        Start symbol: start. *)

  | MenhirState160 : (((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_state
    (** State 160.
        Stack shape : binding Let Id params.
        Start symbol: start. *)

  | MenhirState162 : ((((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_state
    (** State 162.
        Stack shape : binding Let Id params let_types.
        Start symbol: start. *)

  | MenhirState163 : (((((('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 163.
        Stack shape : binding Let Id params let_types expr.
        Start symbol: start. *)


and ('s, 'r) _menhir_cell1_app_expr = 
  | MenhirCell1_app_expr of 's * ('s, 'r) _menhir_state * (Ast.ast_expr)

and ('s, 'r) _menhir_cell1_base = 
  | MenhirCell1_base of 's * ('s, 'r) _menhir_state * (Ast.ast_type_expr)

and ('s, 'r) _menhir_cell1_binding = 
  | MenhirCell1_binding of 's * ('s, 'r) _menhir_state * (Ast.ast_binding)

and ('s, 'r) _menhir_cell1_etype = 
  | MenhirCell1_etype of 's * ('s, 'r) _menhir_state * (Ast.ast_type_expr list)

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

and ('s, 'r) _menhir_cell1_type_app = 
  | MenhirCell1_type_app of 's * ('s, 'r) _menhir_state * (Ast.ast_type_expr)

and ('s, 'r) _menhir_cell1_type_def = 
  | MenhirCell1_type_def of 's * ('s, 'r) _menhir_state * (string * Ast.ast_type_expr list)

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

and ('s, 'r) _menhir_cell1_Id = 
  | MenhirCell1_Id of 's * ('s, 'r) _menhir_state * (
# 42 "lib/parser.mly"
         (string)
# 567 "lib/parser.ml"
)

and 's _menhir_cell0_Id = 
  | MenhirCell0_Id of 's * (
# 42 "lib/parser.mly"
         (string)
# 574 "lib/parser.ml"
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
# 158 "lib/parser.mly"
                              ( Appexpr (a, b))
# 636 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_02 =
  fun b ->
    (
# 159 "lib/parser.mly"
                ( b )
# 644 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_03 =
  fun () ->
    (
# 190 "lib/parser.mly"
       ( TypeInt )
# 652 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_04 =
  fun () ->
    (
# 191 "lib/parser.mly"
        ( TypeBool )
# 660 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_05 =
  fun () ->
    (
# 192 "lib/parser.mly"
          ( TypeString )
# 668 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_06 =
  fun () ->
    (
# 193 "lib/parser.mly"
        ( TypeUnit )
# 676 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_07 =
  fun id ->
    (
# 194 "lib/parser.mly"
          ( TypeId id )
# 684 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_08 =
  fun t ->
    (
# 195 "lib/parser.mly"
                               ( t )
# 692 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_09 =
  fun () ->
    (
# 162 "lib/parser.mly"
                  ( EmptyParen)
# 700 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_10 =
  fun () ->
    (
# 163 "lib/parser.mly"
       ( True )
# 708 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_11 =
  fun () ->
    (
# 164 "lib/parser.mly"
        ( False )
# 716 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_12 =
  fun id ->
    (
# 165 "lib/parser.mly"
          ( Id id)
# 724 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_13 =
  fun v ->
    (
# 166 "lib/parser.mly"
          (Int v)
# 732 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_14 =
  fun s ->
    (
# 167 "lib/parser.mly"
             (String s)
# 740 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_15 =
  fun e1 t ->
    (
# 168 "lib/parser.mly"
                                             ( Tupleexpr (e1 :: t))
# 748 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_16 =
  fun e ->
    (
# 169 "lib/parser.mly"
                             ( e )
# 756 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_17 =
  fun e id p t ->
    (
# 97 "lib/parser.mly"
                                                           (Letbinding (id, p, t, e))
# 764 "lib/parser.ml"
     : (Ast.ast_binding))

let _menhir_action_18 =
  fun e id p t ->
    (
# 98 "lib/parser.mly"
                                                                (Letrecbinding (id, p, t, e))
# 772 "lib/parser.ml"
     : (Ast.ast_binding))

let _menhir_action_19 =
  fun id s ->
    (
# 99 "lib/parser.mly"
                                  (Typebinding (id, s))
# 780 "lib/parser.ml"
     : (Ast.ast_binding))

let _menhir_action_20 =
  fun b bs ->
    (
# 93 "lib/parser.mly"
                                              ( b :: bs)
# 788 "lib/parser.ml"
     : (Ast.ast_binding list))

let _menhir_action_21 =
  fun b ->
    (
# 94 "lib/parser.mly"
                               (b::[])
# 796 "lib/parser.ml"
     : (Ast.ast_binding list))

let _menhir_action_22 =
  fun t ->
    (
# 184 "lib/parser.mly"
           ([t])
# 804 "lib/parser.ml"
     : (Ast.ast_type_expr list))

let _menhir_action_23 =
  fun t1 t2 ->
    (
# 185 "lib/parser.mly"
                               ( t1 :: t2 )
# 812 "lib/parser.ml"
     : (Ast.ast_type_expr list))

let _menhir_action_24 =
  fun e t ->
    (
# 186 "lib/parser.mly"
                                              ( [Etype t ; e])
# 820 "lib/parser.ml"
     : (Ast.ast_type_expr list))

let _menhir_action_25 =
  fun t ->
    (
# 187 "lib/parser.mly"
                              ([Etype t])
# 828 "lib/parser.ml"
     : (Ast.ast_type_expr list))

let _menhir_action_26 =
  fun e1 e2 id ps ts ->
    (
# 118 "lib/parser.mly"
                                                                          ( Letexpr (id, ps, ts, e1, e2) )
# 836 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_27 =
  fun e1 e2 id ps ts ->
    (
# 119 "lib/parser.mly"
                                                                                ( Letrec (id, ps, ts, e1, e2) )
# 844 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_28 =
  fun e1 e2 e3 ->
    (
# 120 "lib/parser.mly"
                                                  ( Ifexpr(e1, e2, e3) )
# 852 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_29 =
  fun e p t ->
    (
# 121 "lib/parser.mly"
                                                        ( Funcexpr (p, t, e) )
# 860 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_30 =
  fun a ->
    (
# 122 "lib/parser.mly"
                ( a )
# 868 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_31 =
  fun e1 e2 ->
    (
# 123 "lib/parser.mly"
                            ( Binop (e1, Sub, e2) )
# 876 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_32 =
  fun e1 e2 ->
    (
# 124 "lib/parser.mly"
                           ( Binop (e1, Add, e2) )
# 884 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_33 =
  fun e1 e2 ->
    (
# 125 "lib/parser.mly"
                            ( Binop (e1, Mul, e2) )
# 892 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_34 =
  fun e1 e2 ->
    (
# 126 "lib/parser.mly"
                             ( Binop (e1, Div, e2) )
# 900 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_35 =
  fun e1 e2 ->
    (
# 127 "lib/parser.mly"
                         ( Binop (e1, Lessthan, e2) )
# 908 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_36 =
  fun e1 e2 ->
    (
# 128 "lib/parser.mly"
                          ( Binop (e1, Modulo, e2) )
# 916 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_37 =
  fun e1 e2 ->
    (
# 129 "lib/parser.mly"
                         ( Binop (e1, Equal, e2) )
# 924 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_38 =
  fun e1 e2 ->
    (
# 130 "lib/parser.mly"
                             ( Binop (e1, Concatenation, e2) )
# 932 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_39 =
  fun e1 e2 ->
    (
# 131 "lib/parser.mly"
                          ( Binop (e1, LAnd, e2) )
# 940 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_40 =
  fun e1 e2 ->
    (
# 132 "lib/parser.mly"
                         ( Binop (e1, LOr, e2) )
# 948 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_41 =
  fun e ->
    (
# 133 "lib/parser.mly"
               ( Unop (UNot, e) )
# 956 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_42 =
  fun e ->
    (
# 134 "lib/parser.mly"
                 ( Unop (UNegate, e) )
# 964 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_43 =
  fun e v ->
    (
# 135 "lib/parser.mly"
                                            ( Match (e, v))
# 972 "lib/parser.ml"
     : (Ast.ast_expr))

let _menhir_action_44 =
  fun t ->
    (
# 198 "lib/parser.mly"
                   (t)
# 980 "lib/parser.ml"
     : (Ast.ast_type_expr list))

let _menhir_action_45 =
  fun () ->
    (
# 199 "lib/parser.mly"
  ([])
# 988 "lib/parser.ml"
     : (Ast.ast_type_expr list))

let _menhir_action_46 =
  fun e id p ->
    (
# 142 "lib/parser.mly"
                                                    (Branch (id, p, e))
# 996 "lib/parser.ml"
     : (Ast.ast_match_branch))

let _menhir_action_47 =
  fun m ->
    (
# 138 "lib/parser.mly"
                         (m :: [])
# 1004 "lib/parser.ml"
     : (Ast.ast_match_branch list))

let _menhir_action_48 =
  fun m ms ->
    (
# 139 "lib/parser.mly"
                                              (m::ms)
# 1012 "lib/parser.ml"
     : (Ast.ast_match_branch list))

let _menhir_action_49 =
  fun id ->
    (
# 114 "lib/parser.mly"
           (SingleParam id)
# 1020 "lib/parser.ml"
     : (Ast.ast_param))

let _menhir_action_50 =
  fun id t ->
    (
# 115 "lib/parser.mly"
                                           (TypedParam (id, t))
# 1028 "lib/parser.ml"
     : (Ast.ast_param))

let _menhir_action_51 =
  fun () ->
    (
# 110 "lib/parser.mly"
   ([])
# 1036 "lib/parser.ml"
     : (Ast.ast_param list))

let _menhir_action_52 =
  fun p ps ->
    (
# 111 "lib/parser.mly"
                         (p :: ps)
# 1044 "lib/parser.ml"
     : (Ast.ast_param list))

let _menhir_action_53 =
  fun t ->
    (
# 150 "lib/parser.mly"
                                    (t)
# 1052 "lib/parser.ml"
     : (string list))

let _menhir_action_54 =
  fun e ->
    (
# 153 "lib/parser.mly"
         ( [e])
# 1060 "lib/parser.ml"
     : (string list))

let _menhir_action_55 =
  fun e1 e2 ->
    (
# 154 "lib/parser.mly"
                                    ( e1 :: e2 )
# 1068 "lib/parser.ml"
     : (string list))

let _menhir_action_56 =
  fun e t ->
    (
# 155 "lib/parser.mly"
                                  (e :: t)
# 1076 "lib/parser.ml"
     : (string list))

let _menhir_action_57 =
  fun () ->
    (
# 145 "lib/parser.mly"
  (EmptyPattern)
# 1084 "lib/parser.ml"
     : (Ast.ast_pattern_vars))

let _menhir_action_58 =
  fun id ->
    (
# 146 "lib/parser.mly"
          (SinglePattern id)
# 1092 "lib/parser.ml"
     : (Ast.ast_pattern_vars))

let _menhir_action_59 =
  fun t ->
    (
# 147 "lib/parser.mly"
                   ( ListPattern t )
# 1100 "lib/parser.ml"
     : (Ast.ast_pattern_vars))

let _menhir_action_60 =
  fun b ->
    (
# 90 "lib/parser.mly"
                     ( Program b )
# 1108 "lib/parser.ml"
     : (Ast.ast_program))

let _menhir_action_61 =
  fun a ->
    (
# 86 "lib/parser.mly"
              (P a)
# 1116 "lib/parser.ml"
     : (Ast.ast_start))

let _menhir_action_62 =
  fun b ->
    (
# 87 "lib/parser.mly"
                (E b)
# 1124 "lib/parser.ml"
     : (Ast.ast_start))

let _menhir_action_63 =
  fun t ->
    (
# 181 "lib/parser.mly"
            ( Etype t )
# 1132 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_64 =
  fun e ->
    (
# 172 "lib/parser.mly"
                    ([e])
# 1140 "lib/parser.ml"
     : (Ast.ast_expr list))

let _menhir_action_65 =
  fun e t ->
    (
# 173 "lib/parser.mly"
                                    ( e :: t)
# 1148 "lib/parser.ml"
     : (Ast.ast_expr list))

let _menhir_action_66 =
  fun t1 t2 ->
    (
# 176 "lib/parser.mly"
                                       ( Func (t1, t2) )
# 1156 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_67 =
  fun t ->
    (
# 177 "lib/parser.mly"
           ( t )
# 1164 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_68 =
  fun t ->
    (
# 178 "lib/parser.mly"
               ( t )
# 1172 "lib/parser.ml"
     : (Ast.ast_type_expr))

let _menhir_action_69 =
  fun id ->
    (
# 106 "lib/parser.mly"
                 ((id, []))
# 1180 "lib/parser.ml"
     : (string * Ast.ast_type_expr list))

let _menhir_action_70 =
  fun id t ->
    (
# 107 "lib/parser.mly"
                                 ((id,  t))
# 1188 "lib/parser.ml"
     : (string * Ast.ast_type_expr list))

let _menhir_action_71 =
  fun t ->
    (
# 102 "lib/parser.mly"
                (t::[])
# 1196 "lib/parser.ml"
     : ((string * Ast.ast_type_expr list) list))

let _menhir_action_72 =
  fun t ts ->
    (
# 103 "lib/parser.mly"
                               (t::ts)
# 1204 "lib/parser.ml"
     : ((string * Ast.ast_type_expr list) list))

let _menhir_action_73 =
  fun () ->
    (
# 202 "lib/parser.mly"
  ([])
# 1212 "lib/parser.ml"
     : (Ast.ast_type_expr list))

let _menhir_action_74 =
  fun t ->
    (
# 203 "lib/parser.mly"
               ( t :: [] )
# 1220 "lib/parser.ml"
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
  
  let _menhir_run_148 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_start =
    fun _menhir_stack _v ->
      let b = _v in
      let _v = _menhir_action_60 b in
      let a = _v in
      let _v = _menhir_action_61 a in
      _menhir_goto_start _menhir_stack _v
  
  let rec _menhir_goto_bindings : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState151 ->
          _menhir_run_164 _menhir_stack _v
      | MenhirState000 ->
          _menhir_run_148 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_164 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_binding -> _ -> _menhir_box_start =
    fun _menhir_stack _v ->
      let MenhirCell1_binding (_menhir_stack, _menhir_s, b) = _menhir_stack in
      let bs = _v in
      let _v = _menhir_action_20 b bs in
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
                  let _v_1 = _menhir_action_73 () in
                  _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
              | _ ->
                  _eRR ())
          | DoubleSemicolon | Pipe ->
              let id = _v in
              let _v = _menhir_action_69 id in
              _menhir_goto_type_def _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_007 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_06 () in
      _menhir_goto_base _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_base : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState025 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState020 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState006 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState011 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState015 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_027 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_cell1_etype -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_etype (_menhir_stack, _, t) = _menhir_stack in
      let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_24 e t in
      _menhir_goto_etype _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_etype : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState011 ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState020 ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState043 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState006 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState015 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_023 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Times ->
              let _menhir_stack = MenhirCell1_etype (_menhir_stack, _menhir_s, _v) in
              let _menhir_s = MenhirState025 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TUnit ->
                  _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | TString ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | TInt ->
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | TBool ->
                  _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LParen ->
                  let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
                  let _menhir_s = MenhirState026 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
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
                      _eRR ())
              | Id _v ->
                  _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | Arrow | DoubleArrow | DoubleSemicolon | Eq | Pipe | RParen ->
              let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
              let t = _v in
              let _v = _menhir_action_25 t in
              _menhir_goto_etype _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | Arrow ->
          let t = _v in
          let _v = _menhir_action_63 t in
          _menhir_goto_tup_type _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_05 () in
      _menhir_goto_base _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_009 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_03 () in
      _menhir_goto_base _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_010 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_04 () in
      _menhir_goto_base _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
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
      let _v = _menhir_action_07 id in
      _menhir_goto_base _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_tup_type : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let t = _v in
      let _v = _menhir_action_68 t in
      _menhir_goto_type_app _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_type_app : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState043 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState006 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState015 ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState011 ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_029 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Arrow ->
          let _menhir_stack = MenhirCell1_type_app (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DoubleArrow | DoubleSemicolon | Eq | Pipe | RParen ->
          let t = _v in
          let _v = _menhir_action_74 t in
          _menhir_goto_types _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_015 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_type_app -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState015 in
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
      | MenhirState043 ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState006 ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_044 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Colon -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Colon (_menhir_stack, _menhir_s) = _menhir_stack in
      let t = _v in
      let _v = _menhir_action_44 t in
      _menhir_goto_let_types _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_let_types : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState160 ->
          _menhir_run_161 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState155 ->
          _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState140 ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState103 ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_161 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_let_types (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState162 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_033 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_10 () in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_base_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState065 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState000 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState162 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState157 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState142 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState137 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState035 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState036 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState124 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState105 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState107 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState100 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState094 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState073 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState071 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState069 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_066 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_app_expr -> _ -> _ -> _ -> _ -> _menhir_box_start =
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
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | String _v_0 ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState065
      | LParen ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | Int _v_1 ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState065
      | Id _v_2 ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState065
      | False ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | And | Comma | Concat | Divide | DoubleSemicolon | EOF | Else | Eq | In | Lt | Minus | Mod | Or | Pipe | Plus | RParen | Then | Times | With ->
          let a = _v in
          let _v = _menhir_action_30 a in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_14 s in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_051 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | String _v ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState051
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Not ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | Negate ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | Match ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | Let ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | LParen ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | Int _v ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState051
      | If ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | Id _v ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState051
      | Fun ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | False ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Not (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState035 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Negate (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState036 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_037 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Match (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState037 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
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
                  _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
              | Id _v_0 ->
                  _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState040
              | Colon | Eq ->
                  let _v_1 = _menhir_action_51 () in
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState040 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | Id _v ->
          let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LParen ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
          | Id _v_2 ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState102
          | Colon | Eq ->
              let _v_3 = _menhir_action_51 () in
              _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState102 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Id _v ->
          let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Colon ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
          | RParen ->
              let _v_0 = _menhir_action_45 () in
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Colon (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TUnit ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | TString ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | TInt ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | TBool ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | LParen ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | Id _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043
      | DoubleArrow | Eq | RParen ->
          let _v = _menhir_action_73 () in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_LParen _menhir_cell0_Id -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_50 id t in
          _menhir_goto_param _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_param : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_param (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LParen ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Id _v_0 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState085
      | Colon | DoubleArrow | Eq ->
          let _v_1 = _menhir_action_51 () in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let id = _v in
      let _v = _menhir_action_49 id in
      _menhir_goto_param _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_086 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_param -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_param (_menhir_stack, _menhir_s, p) = _menhir_stack in
      let ps = _v in
      let _v = _menhir_action_52 p ps in
      _menhir_goto_params _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_params : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState159 ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_155 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState139 ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState134 ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState085 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState056 ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_160 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_params (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState160
      | Eq ->
          let _v_0 = _menhir_action_45 () in
          _menhir_run_161 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState160 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_155 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_params (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | Eq ->
          let _v_0 = _menhir_action_45 () in
          _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState155 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_156 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_let_types (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState157 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let v = _v in
      let _v = _menhir_action_13 v in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_054 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_If (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState054 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let id = _v in
      let _v = _menhir_action_12 id in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_056 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Fun (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LParen ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | Id _v ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056
      | Colon | DoubleArrow ->
          let _v = _menhir_action_51 () in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Fun as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_params (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | DoubleArrow ->
          let _v_0 = _menhir_action_45 () in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState057 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_params as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_let_types (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DoubleArrow ->
          let _menhir_s = MenhirState059 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_11 () in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_140 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_params (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | Eq ->
          let _v_0 = _menhir_action_45 () in
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState140 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_141 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_let_types (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState142 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_135 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_params (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | Eq ->
          let _v_0 = _menhir_action_45 () in
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState135 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_136 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_let_types (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState137 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_103 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_params (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | Eq ->
          let _v_0 = _menhir_action_45 () in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState103 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_104 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_let_types (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState105 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_params (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | Eq ->
          let _v_0 = _menhir_action_45 () in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState048 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_let_types (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState050 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState162 ->
          _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState157 ->
          _menhir_run_158 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState142 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState137 ->
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState035 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState036 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState124 ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState107 ->
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState105 ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState100 ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState094 ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState073 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState071 ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState069 ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState067 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState059 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_163 : type  ttv_stack. (((((ttv_stack, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | DoubleSemicolon ->
          let MenhirCell1_let_types (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_params (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_17 e id p t in
          _menhir_goto_binding _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Times (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState062 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Plus (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState067 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Or (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState073 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Mod (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState069 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_075 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Minus (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState075 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Lt (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState077 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Eq (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState081 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Divide (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState071 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_079 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Concat (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState079 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_And (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState083 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_binding : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Type ->
          let _menhir_stack = MenhirCell1_binding (_menhir_stack, _menhir_s, _v) in
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | Let ->
          let _menhir_stack = MenhirCell1_binding (_menhir_stack, _menhir_s, _v) in
          let _menhir_stack = MenhirCell1_Let (_menhir_stack, MenhirState151) in
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
                      _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
                  | Id _v_1 ->
                      _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState154
                  | Colon | Eq ->
                      let _v_2 = _menhir_action_51 () in
                      _menhir_run_155 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState154 _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | Id _v_3 ->
              let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v_3) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LParen ->
                  _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
              | Id _v_4 ->
                  _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState159
              | Colon | Eq ->
                  let _v_5 = _menhir_action_51 () in
                  _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState159 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | EOF ->
          let b = _v in
          let _v = _menhir_action_21 b in
          _menhir_goto_bindings _menhir_stack _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_158 : type  ttv_stack. (((((ttv_stack, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState158
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState158
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState158
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState158
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState158
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState158
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState158
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState158
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState158
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState158
      | DoubleSemicolon ->
          let MenhirCell1_let_types (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_params (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_18 e id p t in
          _menhir_goto_binding _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_146 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | EOF ->
          let b = _v in
          let _v = _menhir_action_62 b in
          _menhir_goto_start _menhir_stack _v
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | _ ->
          _eRR ()
  
  and _menhir_run_143 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | In ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | DoubleSemicolon ->
          let MenhirCell1_let_types (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_params (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_17 e id p t in
          _menhir_goto_binding _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_107 : type  ttv_stack. (((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_In (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState107 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_138 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | In ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | DoubleSemicolon ->
          let MenhirCell1_let_types (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_params (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_18 e id p t in
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
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_131 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Not -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Not (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_41 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_130 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Negate -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Negate (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_42 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_125 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_pattern_vars as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Comma | DoubleSemicolon | EOF | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_pattern_vars (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_46 e id p in
          (match (_tok : MenhirBasics.token) with
          | Pipe ->
              let _menhir_stack = MenhirCell0_match_branch (_menhir_stack, _v) in
              _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
          | And | Comma | Concat | Divide | DoubleSemicolon | EOF | Else | Eq | In | Lt | Minus | Mod | Or | Plus | RParen | Then | Times | With ->
              let MenhirCell1_Pipe (_menhir_stack, _menhir_s) = _menhir_stack in
              let m = _v in
              let _v = _menhir_action_47 m in
              _menhir_goto_match_branches _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _menhir_fail ())
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_111 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Pipe (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Id _v ->
          let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LParen ->
              _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
          | Id _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_menhir_s, id) = (MenhirState112, _v_0) in
              let _v = _menhir_action_58 id in
              _menhir_goto_pattern_vars _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | DoubleArrow ->
              let _menhir_s = MenhirState112 in
              let _v = _menhir_action_57 () in
              _menhir_goto_pattern_vars _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_113 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState113 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LParen ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_114 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Comma ->
          let _menhir_stack = MenhirCell1_Id (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState115 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LParen ->
              _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | RParen ->
          let e = _v in
          let _v = _menhir_action_54 e in
          _menhir_goto_pattern_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_pattern_var : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState113 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState115 ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_120 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_LParen -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_53 t in
          _menhir_goto_pattern_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_pattern_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState112 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState113 ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState115 ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_126 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let t = _v in
      let _v = _menhir_action_59 t in
      _menhir_goto_pattern_vars _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_pattern_vars : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_pattern_vars (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DoubleArrow ->
          let _menhir_s = MenhirState124 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_117 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Comma ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Id _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (t, e) = (_v, _v_0) in
              let _v = _menhir_action_56 e t in
              _menhir_goto_pattern_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_116 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Id -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Id (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_55 e1 e2 in
      _menhir_goto_pattern_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_match_branches : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState110 ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState127 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_129 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_With -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_With (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_Match (_menhir_stack, _menhir_s) = _menhir_stack in
      let v = _v in
      let _v = _menhir_action_43 e v in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_128 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_match_branch -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_match_branch (_menhir_stack, m) = _menhir_stack in
      let MenhirCell1_Pipe (_menhir_stack, _menhir_s) = _menhir_stack in
      let ms = _v in
      let _v = _menhir_action_48 m ms in
      _menhir_goto_match_branches _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_109 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Match as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | With ->
          let _menhir_stack = MenhirCell1_With (_menhir_stack, MenhirState109) in
          let _menhir_s = MenhirState110 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Pipe ->
              _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Times ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | Plus ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | Or ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | Mod ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | Minus ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | Lt ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | Eq ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | Divide ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | Concat ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | And ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | _ ->
          _eRR ()
  
  and _menhir_run_108 : type  ttv_stack. ((((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | Comma | DoubleSemicolon | EOF | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_In (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_let_types (_menhir_stack, _, ts) = _menhir_stack in
          let MenhirCell1_params (_menhir_stack, _, ps) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_26 e1 e2 id ps ts in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_106 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Plus ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Or ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Mod ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Minus ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Lt ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | In ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Eq ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Divide ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Concat ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | And ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | _ ->
          _eRR ()
  
  and _menhir_run_101 : type  ttv_stack. ((((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | Comma | DoubleSemicolon | EOF | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_In (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_let_types (_menhir_stack, _, ts) = _menhir_stack in
          let MenhirCell1_params (_menhir_stack, _, ps) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_27 e1 e2 id ps ts in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_099 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Plus ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Or ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Mod ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Minus ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Lt ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | In ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Eq ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Divide ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | Concat ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | And ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | _ ->
          _eRR ()
  
  and _menhir_run_095 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Comma ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | RParen ->
          let MenhirCell1_Comma (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_64 e in
          _menhir_goto_tuple_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_094 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Comma (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState094 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_tuple_expr : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState092 ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState095 ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_097 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
      let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
      let t = _v in
      let _v = _menhir_action_15 e1 t in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_096 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_Comma (_menhir_stack, _menhir_s) = _menhir_stack in
      let t = _v in
      let _v = _menhir_action_65 e t in
      _menhir_goto_tuple_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_092 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_16 e in
          _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Comma ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | _ ->
          _eRR ()
  
  and _menhir_run_091 : type  ttv_stack. ((((((ttv_stack, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Else as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Comma | DoubleSemicolon | EOF | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_Else (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e2) = _menhir_stack in
          let MenhirCell1_Then (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_If (_menhir_stack, _menhir_s) = _menhir_stack in
          let e3 = _v in
          let _v = _menhir_action_28 e1 e2 e3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_089 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Plus ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Or ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Mod ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Minus ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Lt ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Eq ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Else ->
          let _menhir_stack = MenhirCell1_Else (_menhir_stack, MenhirState089) in
          let _menhir_s = MenhirState090 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Divide ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Concat ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | And ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_If as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Then ->
          let _menhir_stack = MenhirCell1_Then (_menhir_stack, MenhirState087) in
          let _menhir_s = MenhirState088 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Plus ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Or ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Mod ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Minus ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Lt ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Eq ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Divide ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Concat ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | And ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | _ ->
          _eRR ()
  
  and _menhir_run_084 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_And as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | And | Comma | DoubleSemicolon | EOF | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_And (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_39 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_082 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Eq as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | And | Comma | DoubleSemicolon | EOF | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_Eq (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_37 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_080 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Concat as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | And | Comma | Concat | DoubleSemicolon | EOF | Else | Eq | In | Lt | Minus | Or | Pipe | Plus | RParen | Then | With ->
          let MenhirCell1_Concat (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_38 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_078 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Lt as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | And | Comma | DoubleSemicolon | EOF | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_Lt (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_35 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_076 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Minus as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | And | Comma | Concat | DoubleSemicolon | EOF | Else | Eq | In | Lt | Minus | Or | Pipe | Plus | RParen | Then | With ->
          let MenhirCell1_Minus (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_31 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_074 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Or as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Comma | DoubleSemicolon | EOF | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_Or (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_40 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_072 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Divide -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Divide (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_34 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_070 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Mod -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Mod (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_36 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_068 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Plus as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | And | Comma | Concat | DoubleSemicolon | EOF | Else | Eq | In | Lt | Minus | Or | Pipe | Plus | RParen | Then | With ->
          let MenhirCell1_Plus (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_32 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_063 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Times -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Times (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_33 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_061 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_params, _menhir_box_start) _menhir_cell1_let_types as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Comma | DoubleSemicolon | EOF | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_let_types (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_params (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell1_Fun (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_29 e p t in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_064 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let b = _v in
      let _v = _menhir_action_02 b in
      _menhir_goto_app_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_028 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
      let MenhirCell1_Pipe (_menhir_stack, _menhir_s) = _menhir_stack in
      let t = _v in
      let _v = _menhir_action_70 id t in
      _menhir_goto_type_def _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_type_def : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Pipe ->
          let _menhir_stack = MenhirCell1_type_def (_menhir_stack, _menhir_s, _v) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | DoubleSemicolon ->
          let t = _v in
          let _v = _menhir_action_71 t in
          _menhir_goto_type_defs _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_type_defs : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState031 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState003 ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_032 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_type_def -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_type_def (_menhir_stack, _menhir_s, t) = _menhir_stack in
      let ts = _v in
      let _v = _menhir_action_72 t ts in
      _menhir_goto_type_defs _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_030 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Type _menhir_cell0_Id -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell0_Id (_menhir_stack, id) = _menhir_stack in
      let MenhirCell1_Type (_menhir_stack, _menhir_s) = _menhir_stack in
      let s = _v in
      let _v = _menhir_action_19 id s in
      _menhir_goto_binding _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_016 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_type_app as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Arrow ->
          let _menhir_stack = MenhirCell1_type_app (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DoubleArrow | DoubleSemicolon | Eq | Pipe | RParen ->
          let MenhirCell1_type_app (_menhir_stack, _menhir_s, t1) = _menhir_stack in
          let t2 = _v in
          let _v = _menhir_action_66 t1 t2 in
          _menhir_goto_type_app _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_013 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_08 t in
          _menhir_goto_base _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Arrow ->
          let _menhir_stack = MenhirCell1_type_app (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_021 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_base -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_base (_menhir_stack, _menhir_s, t1) = _menhir_stack in
      let t2 = _v in
      let _v = _menhir_action_23 t1 t2 in
      _menhir_goto_etype _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_018 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let t = _v in
      let _v = _menhir_action_63 t in
      _menhir_goto_tup_type _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_022 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_base as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_base (_menhir_stack, _menhir_s, _v) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Arrow | DoubleArrow | DoubleSemicolon | Eq | Pipe | RParen ->
          let t = _v in
          let _v = _menhir_action_22 t in
          _menhir_goto_etype _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_020 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_base -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState020 in
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
  
  and _menhir_run_019 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_base (_menhir_stack, _menhir_s, _v) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Arrow | DoubleArrow | DoubleSemicolon | Eq | Pipe | RParen ->
          let t = _v in
          let _v = _menhir_action_67 t in
          _menhir_goto_type_app _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  let _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Type ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | True ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | String _v ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000
      | Not ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | Negate ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | Match ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
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
                      _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
                  | Id _v_0 ->
                      _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState134
                  | Colon | Eq ->
                      let _v_1 = _menhir_action_51 () in
                      _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState134 _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | Id _v ->
              let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LParen ->
                  _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
              | Id _v_2 ->
                  _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState139
              | Colon | Eq ->
                  let _v_3 = _menhir_action_51 () in
                  _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState139 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | LParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | Int _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000
      | If ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | Id _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000
      | Fun ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | False ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | _ ->
          _eRR ()
  
end

let start =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_start v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
