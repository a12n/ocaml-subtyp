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
