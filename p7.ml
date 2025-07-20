type 'a node =
  | One of 'a
  | Many of 'a node list

(* let flatten (xs: 'a node list): 'a list =
  (* just return the inner to a list *)
  let rec flatten_one (one: 'a node): 'a list =
  match one with
  | One xx -> [xx]
  | Many ns -> match ns with
               | [] -> []
               | n :: rest -> (flatten_one n) :: (flatten_one rest)
  and rec flatten_tail (xs: 'a node list) (acc: 'a list): 'a list =
  match xs with
  | [] -> acc
  | [x]  -> acc :: flatten_one x
  | f :: rest -> flatten_tail rest (acc :: flatten_one f) in
  flatten_tail xs [] *)

let flatten (xs: 'a node list): 'a list =
  let rec aux acc = function
    | [] -> acc
    | One x :: t -> aux ( x :: acc ) t
    | Many l :: t -> aux ( aux acc l ) t
  in
  List.rev (aux [] xs)
