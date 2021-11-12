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

module Non_neg_num = struct
  type t = Num.num
  let zero = Num.Int 0
  let of_num x = if Num.lt_num x zero then invalid_arg "Non_neg_num.of_num" else x
end

module Pos_int = struct
  type t = int
  let one = 1
  let of_int n = if n < one then invalid_arg "Pos_int.of_int" else n
end

module Pos_float = struct
  type t = float
  let of_float x = if x <= 0.0 then invalid_arg "Pos_float.of_float" else x
end

module Pos_num = struct
  type t = Num.num
  let of_num x = if Num.(le_num x (Int 0)) then invalid_arg "Pos_num.of_num" else x
end

module Unit_float = struct
  type t = float
  let one = 1.0
  let zero = 0.0
  let of_float t = if t < zero || t > one then invalid_arg "Unit_float.of_float" else t
end

module Unit_num = struct
  type t = Num.num
  let one = Num.Int 1
  let zero = Num.Int 0
  let of_num t = if Num.(lt_num t zero || gt_num t one) then invalid_arg "Unit_num.of_num" else t
end


module Non_empty_list = struct
  type 'a t = 'a * 'a list
  let of_list = function
    | x :: xs -> x, xs
    | []      -> invalid_arg "Non_empty_list.of_list"
  let to_list (x, xs) = x :: xs
end


module Open = struct
  type neg_int = Neg_int.t
  type non_neg_float = Non_neg_float.t
  type non_neg_int = Non_neg_int.t
  type non_neg_num = Non_neg_num.t
  type pos_float = Pos_float.t
  type pos_int = Pos_int.t
  type pos_num = Pos_num.t
  type unit_float = Unit_float.t
  type unit_num = Unit_num.t

  type 'a non_empty_list = 'a Non_empty_list.t

  let neg_int = Neg_int.of_int
  let non_neg_float = Non_neg_float.of_float
  let non_neg_int = Non_neg_int.of_int
  let non_neg_num = Non_neg_num.of_num
  let pos_float = Pos_float.of_float
  let pos_int = Pos_int.of_int
  let pos_num = Pos_num.of_num
  let unit_float = Unit_float.of_float
  let unit_num = Unit_num.of_num

  let non_empty_list = Non_empty_list.of_list
end
