(*
Length of a List
*)

let length (xs: 'a list): int =
  let rec length_tail (xs: 'a list) (result: int): int =
  match xs with
  | [] -> result
  | _::rest -> length_tail rest (result + 1)
  in length_tail xs 0
