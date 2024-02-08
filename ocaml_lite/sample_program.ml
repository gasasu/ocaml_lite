type list = | Nil | Cons of int * list;;
let h = Cons (2, Cons (3, Cons(4, Nil)));;
let rec length v = match v with | Nil => 0 | Cons (a,b) => 1 + length b;;
let g = length h;; 

type tree = | Leaf | Node of int * tree * tree;;

let tree1 = Leaf;;
let tree2 = Node (1, Leaf, Leaf);;
let tree3 = Node (2, Node (1, Leaf, Leaf), Node (3, Leaf, Leaf));;

let rec sum_tree t =
  match t with
  | Leaf => 0
  | Node (value, left, right) => value + sum_tree left + sum_tree right;;

let sum1 = sum_tree tree1;;
let sum2 = sum_tree tree2;;
let sum3 = sum_tree tree3;;

type expr = | Value of int | Add of expr * expr | Mul of expr * expr;;

let expr1 = Value 42;;
let expr2 = Add (Value 12, Mul (Value 6, Value 8));;
let expr3 = Mul (Add (Value 5, Value 7), Value 13);;

let rec eval_expr e =
  match e with
  | Value v => v
  | Add (e1, e2) => eval_expr e1 + eval_expr e2
  | Mul (e1, e2) => eval_expr e1 * eval_expr e2;;

let eval1 = eval_expr expr1;;
let eval2 = eval_expr expr2;;
let eval3 = eval_expr expr3;;

type custom_list = | EmptyList | Node of int * custom_list;;

let list1 = EmptyList;;
let list2 = Node (1, Node (2, Node (3, EmptyList)));;
let list3 = Node (4, Node (5, EmptyList));;

let rec append_lists lst1 lst2 =
  match lst1 with
  | EmptyList => lst2
  | Node (x, rest) => Node (x, append_lists rest lst2);;

let append1 = append_lists list1 list2;;
let append2 = append_lists list2 list3;;


let x = let x = 4 in let x = 3 in let x = 2 in x + 1 ;;

let x = let x = 1 in let x = x+1 in (let x = 4 in x, x);;

let test1 = let x = 10 in  let x = x * 2 in let x = x - 5 in x;; 

let test2 = let a = 5 in let b = 10 in let a = a + b in let b = a - b in let a = a - b in a + b;;  

let test3 = let y = 3 in let y = y * y in let y = y + y in let y = y / 2 in 2*y;; 

let test4 = let z = 1 in let z = z + 1 in let z = z * 3 in let z = z / 2 in let z = z - 1 in z;;

let test5 = let w = 100 in let w = w / 2 in let w = w + 10 in let w = w * 2 in let w = w - 5 in w;;
