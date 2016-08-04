module Neg_int = struct
  type t = int
  let neg_one = -1
  let of_int n = if n > neg_one then invalid_arg "Neg_int.of_int" else n
end

module Non_neg_float = struct
  type t = float
  let zero = 0.0
  let of_float x = if x < zero then invalid_arg "Non_neg_float.of_float" else x
end

module Non_neg_int = struct
  type t = int
  let zero = 0
  let of_int n = if n < zero then invalid_arg "Non_neg_int.of_int" else n
end

module Pos_int = struct
  type t = int
  let one = 1
  let of_int n = if n < one then invalid_arg "Pos_int.of_int" else n
end

module Unit_float = struct
  type t = float
  let one = 1.0
  let zero = 0.0
  let of_float t = if t < zero || t > one then invalid_arg "Unit_float.of_float" else t
end


module Non_empty_list = struct
  type 'a t = 'a * 'a list
  let of_list = function
    | x :: xs -> x, xs
    | []      -> invalid_arg "Non_empty_list.of_list"
  let to_list (x, xs) = x :: xs
end


module Std = struct
  type neg_int = Neg_int.t
  type non_neg_float = Non_neg_float.t
  type non_neg_int = Non_neg_int.t
  type pos_int = Pos_int.t
  type unit_float = Unit_float.t

  type 'a non_empty_list = 'a Non_empty_list.t

  let neg_int = Neg_int.of_int
  let non_neg_float = Non_neg_float.of_float
  let non_neg_int = Non_neg_int.of_int
  let pos_int = Pos_int.of_int
  let unit_float = Unit_float.of_float

  let non_empty_list = Non_empty_list.of_list
end
