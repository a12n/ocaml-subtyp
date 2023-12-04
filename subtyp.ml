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

module Non_empty_list = struct
  type 'a t = 'a list
  let of_list = function
    | (_ :: _) as l -> l
    | []            -> invalid_arg __FUNCTION__
end

module Open = struct
  type neg_float = Float.Neg.t
  type neg_int = Int.Neg.t
  type 'a non_empty_list = 'a Non_empty_list.t
  type non_neg_float = Float.Non_neg.t
  type non_neg_int = Int.Non_neg.t
  type pos_float = Float.Pos.t
  type pos_int = Int.Pos.t
  type unit_float = Float.Unit.t

  let neg_float = Float.Neg.of_float
  let neg_int = Int.Neg.of_int
  let non_empty_list = Non_empty_list.of_list
  let non_neg_float = Float.Non_neg.of_float
  let non_neg_int = Int.Non_neg.of_int
  let pos_float = Float.Pos.of_float
  let pos_int = Int.Pos.of_int
  let unit_float = Float.Unit.of_float
end
