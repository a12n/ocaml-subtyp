module Float = struct
  module Neg = struct
    type t = float
    let of_float x = if x >= 0.0 then invalid_arg __FUNCTION__ else x
  end
  module Non_neg = struct
    type t = float
    let zero = 0.0
    let of_float x = if x < zero then invalid_arg __FUNCTION__ else x
  end
  module Pos = struct
    type t = float
    let of_float x = if x <= 0.0 then invalid_arg __FUNCTION__ else x
  end
  module Unit = struct
    type t = float
    let one = 1.0
    let zero = 0.0
    let of_float t = if t < zero || t > one then invalid_arg __FUNCTION__ else t
  end
end

module Int = struct
  module Neg = struct
    type t = int
    let minus_one = -1
    let of_int n = if n > minus_one then invalid_arg __FUNCTION__ else n
  end
  module Non_neg = struct
    type t = int
    let zero = 0
    let of_int n = if n < zero then invalid_arg __FUNCTION__ else n
  end
  module Pos = struct
    type t = int
    let one = 1
    let of_int n = if n < one then invalid_arg __FUNCTION__ else n
  end
end

module List = struct
  module Non_empty = struct
    type 'a t = 'a * 'a list
    let of_list = function
      | (x0 :: xs) -> x0, xs
      | []         -> invalid_arg __FUNCTION__
    let to_list (x0, xs) = x0 :: xs
  end
end

module Open = struct
  type neg_float = Float.Neg.t
  type neg_int = Int.Neg.t
  type 'a non_empty_list = 'a List.Non_empty.t
  type non_neg_float = Float.Non_neg.t
  type non_neg_int = Int.Non_neg.t
  type pos_float = Float.Pos.t
  type pos_int = Int.Pos.t
  type unit_float = Float.Unit.t

  let neg_float = Float.Neg.of_float
  let neg_int = Int.Neg.of_int
  let non_empty_list = List.Non_empty.of_list
  let non_neg_float = Float.Non_neg.of_float
  let non_neg_int = Int.Non_neg.of_int
  let pos_float = Float.Pos.of_float
  let pos_int = Int.Pos.of_int
  let unit_float = Float.Unit.of_float
end
