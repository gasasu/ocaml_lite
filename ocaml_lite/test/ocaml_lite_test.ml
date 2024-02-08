open OUnit2
open Ocaml_lite.Lexer
open Ocaml_lite.Interpreter


(* let interpreter_tests = "test suite for the interpreter" >::: [
    "1" >::
    (fun _ -> assert_equal 
        (VInt 3)
        (interpret (parse "
        type list = | Nil | Cons of int * list;;
        let h = Cons (2, Cons (3, Cons(4, Nil)));;
        let rec length v = match v with | Nil => 0 | Cons (a,b) => 1 + length b;;
        let g = length h;;
        ")));
    "2" >::
    (fun _ -> assert_equal 
        (VInt 6)
       (interpret (parse "
       type tree = | Leaf | Node of int * tree * tree;;
       let tree_1 = Node (2, Node (1, Leaf, Leaf), Node (3, Leaf, Leaf));;
       let rec sum_tree t =
        match t with
        | Leaf => 0
        | Node (value, left, right) => value + sum_tree left + sum_tree right;;

      let sum_test = sum_tree tree_1;;
       ")));
    "3" >::
    (fun _ -> assert_equal 
        (VInt 1)
       (interpret (parse "
       type tree = | Leaf | Node of int * tree * tree;;
       let tree_2 = Node (1, Leaf, Leaf);;
       let rec sum_tree t =
        match t with
        | Leaf => 0
        | Node (value, left, right) => value + sum_tree left + sum_tree right;;

      let sum_test = sum_tree tree_2;;
      ")));
    "4" >::
    (fun _ -> assert_equal 
        (VInt 42)
       (interpret (parse "
       type expr = | Value of int | Add of expr * expr | Mul of expr * expr;;
      let expr_1 = Value 42;;
      let rec eval_expr e =
        match e with
        | Value v => v
        | Add (e1, e2) => eval_expr e1 + eval_expr e2
        | Mul (e1, e2) => eval_expr e1 * eval_expr e2;;
      let eval_test_1 = eval_expr expr_1;;
       ")));
    "5" >::
    (fun _ -> assert_equal 
        (VInt 60)
       (interpret (parse "
      type expr = | Value of int | Add of expr * expr | Mul of expr * expr;;
      let expr_2 = Add (Value 12, Mul (Value 6, Value 8));;
      let rec eval_expr e =
        match e with
        | Value v => v
        | Add (e1, e2) => eval_expr e1 + eval_expr e2
        | Mul (e1, e2) => eval_expr e1 * eval_expr e2;;
      let eval_test_2 = eval_expr expr_2;;
      ")));
      "6" >::
    (fun _ -> assert_equal 
        (VInt 156)
       (interpret (parse "
       type expr = | Value of int | Add of expr * expr | Mul of expr * expr;;
      let expr_3 = Mul (Add (Value 5, Value 7), Value 13);;
      let rec eval_expr e =
        match e with
        | Value v => v
        | Add (e1, e2) => eval_expr e1 + eval_expr e2
        | Mul (e1, e2) => eval_expr e1 * eval_expr e2;;
      let eval_test_3 = eval_expr expr_3;;"
      )));
      "7" >::
    (fun _ -> assert_equal 
        (VInt 156)
       (interpret (parse "
       type expr = | Value of int | Add of expr * expr | Mul of expr * expr;;
      let expr_3 = Mul (Add (Value 5, Value 7), Value 13);;
      let rec eval_expr e =
        match e with
        | Value v => v
        | Add (e1, e2) => eval_expr e1 + eval_expr e2
        | Mul (e1, e2) => eval_expr e1 * eval_expr e2;;
      let eval_test_3 = eval_expr expr_3;;"
      )));
      "8" >::
    (fun _ -> assert_equal 
        (VUser ("Node", [VList [VInt 1; VUser ("Node", [VList [VInt 2; VUser ("Node",[VList[VInt 3; 
        VUser ("Node", [VList [VInt 4; VUser ("Node", [VList [VInt 5; VUser ("EmptyList", [])]])]])]])]])]]))
       (interpret (parse "
       type custom_list = | EmptyList | Node of int * custom_list;;
      let list_1 = Node (1, Node (2, Node (3, EmptyList)));;
      let list_2 = Node (4, Node (5, EmptyList));;
      let rec append_lists lst1 lst2 =
        match lst1 with
        | EmptyList => lst2
        | Node (x, rest) => Node (x, append_lists rest lst2);;
      let append_test = append_lists list_1 list_2;;"
      )));
      "9" >::
    (fun _ -> assert_equal 
        (VUser ("Node", [VList [VInt 4; VUser ("Node", [VList [VInt 5; VUser ("Node",[VList [VInt 1; 
        VUser ("Node", [VList [VInt 2; VUser ("Node", [VList [VInt 3; VUser ("EmptyList", [])]])]])]])]])]]))
       (interpret (parse "
      type custom_list = | EmptyList | Node of int * custom_list;;
      let list_1 = Node (1, Node (2, Node (3, EmptyList)));;
      let list_2 = Node (4, Node (5, EmptyList));;
      let rec append_lists lst1 lst2 =
        match lst1 with
        | EmptyList => lst2
        | Node (x, rest) => Node (x, append_lists rest lst2);;
      let append_test_2 = append_lists list_2 list_1;;
      "
      )));
  ] *)


let tests = "test suite for ocaml_lite" >::: [
    Lexer.lex_tests;
  ]

let _ = run_test_tt_main tests
