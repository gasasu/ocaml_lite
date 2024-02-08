(* let parse = fun _ -> failwith "parse is undefined"
let typecheck = fun _ -> failwith "typecheck is undefined"
let interpret = fun _-> failwith "interpret is undefined" *)

let parse = Ocaml_lite.Lexer.parse
let typecheck = Ocaml_lite.Type_check.typecheck
let interpret = Ocaml_lite.Interpreter.interpret

let () =
  if Array.length Sys.argv <> 2
  then failwith "Expected exactly one command line argument"
  else
    let lines = ref [] in
let channel = open_in Sys.argv.(1) in
try
  while true; do
    lines := input_line channel :: !lines
  done;
with End_of_file ->
  close_in channel;
  let text = String.concat "" (List.rev !lines) in
    let ast = parse text in
    let _ = typecheck ast in
    interpret ast
