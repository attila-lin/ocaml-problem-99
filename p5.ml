(*
Reverse a List
*)

(* let rec rev (xs: 'a list): 'a list =
  match xs with
  | [] -> []
  | [x] -> [x]
  | x::rest -> (rev rest) :: x :: [] *)

let rev (xs: 'a list): 'a list =
  let rec rev_tail (xs: 'a list) (acc: 'a list): 'a list =
  match xs with
  | [] -> acc
  | x :: rest -> rev_tail rest (x :: acc)
  in
  rev_tail xs []
