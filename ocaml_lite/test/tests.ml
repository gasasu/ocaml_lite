(* 
Test cases for the parser   

1. let y: int = 5 + 3;; 
==> Program [Letbinding ("y", [], [Typeint], [Binop (Int 5, Add, Int 3)])]

2. let rec factorial(n: int): int = if n = 0 then 1 else n * factorial (n - 1);;
==> Program [Letrecbinding ("factorial", [TypedParam ("n", Typeint)], [Typeint], [Ifexpr (Binop 
(Id "n", Eq, Int 0) , Int 1, Binop (Id "n", Mul, Appexpr (Id "factorial", Binop (Id "n", Sub, Int 1))))] )]


3. type tree = | Leaf | Node of int * tree * tree;;
==> Program [Typebinding ("tree", [("Leaf", []); ("Node", [Typeint; TypeId "tree"; TypeId "tree"])])]

4. if x < 10 then 1 else 0;;
==> Ifexpr (Binop (Id "x", Lessthan, Int 10), Int 1, Int 0)

5. (x + 2) * (y - 1);;
==> Binop (Binop (Id "x", Add, Int 2), Mul, Binop (Id "y", Sub, Int 1))

6. match x with | (0, 0) => "origin" | (_, _) => "non-origin";;
==> Match (Id "x", [Branch ("(0, 0)", [], Id "origin"); Branch ("(_, _)", [], Id "non-origin")])

7. type pair = | Tuple of int * int;;
==> Program [Typebinding ("pair", ("Tuple", [Typeint; Typeint]))]

8. not true;;
==> Unop (UNot, true)

9. if x < 10 then if y = 5 then 1 else 2 else 3;;
==> Ifexpr (Binop (Id "x", Lessthan, Int 10), Ifexpr (Binop (Id "y", Equal, Int 5), Int 1, Int 2), Int 3)

10. match x with | 0 => "zero" | _ => "non-zero";;
==> Match (Id "x", [Branch ("0", [], Id "zero"); Branch ("_", [], Id "non-zero")])


Test cases for the Interpreter

1. 3 + 5;;
==> 8

2. not true;;
==> false

3. if 5 < 10 then if 2 > 1 then 1 else 2 else 3;;
==> 1

4. let add(x, y): int = x + y;;
add(add(2, 3), add(4, 5));;
==> 14

5. let rec factorial(n: int): int = if n = 0 then 1 else n * factorial(n - 1);;
factorial(5);;
==> 120

6. let x = 42;;
x+58;;
==> 100

7. let x = 5;;
let y = 10;;
if y < x then 5 else 3;;
==> 3

8. false;;
==> false

9. 50 mod 8;;
==> 2

10. 57 - 98;;
==> -41


Test cases for the typechecker

1. 3 + 5;;
==> TypeInt

2. not true;;
==> TypeBool

3. if 5 < 10 then if 2 > 1 then 1 else 2 else 3;;
==> TypeInt

4. let add(x, y): int = x + y;;
add(add(2, 3), add(4, 5));;
==> TypeInt

5. let rec factorial(n: int): int = if n = 0 then 1 else n * factorial(n - 1);;
factorial(5);;
==> TypeInt

6. let x = 42;;
x+58;;
==> TypeInt

7. let x = 5;;
let y = 10;;
if y < x then 5 else 3;;
==> TypeInt

8. false;;
==> TypeBool

9. "string";;
==> TypeString

10. 57 - 98;;
==> TypeInt
*)

