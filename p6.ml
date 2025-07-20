(*
Palindrome
*)

(* let is_palindrome (xs: 'a list): bool =
  match xs with
  | [] -> true
  | [a] -> true
  | [a, b] -> a = b
  | x :: rest -> x = tail rest and is_palindrome rest  *)


let is_palindrome (xs: 'a list): bool =
  xs = List.rev xs
