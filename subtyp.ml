module Neg_int = struct
  type t = int
  let of_int n = if n < 0 then n else invalid_arg "Neg_int.of_int"
end

module Non_neg_float = struct
  type t = float
  let of_float x = if x > 0.0 then x else invalid_arg "Non_neg_float.of_float"
end

module Non_neg_int = struct
  type t = int
  let of_int n = if n > -1 then n else invalid_arg "Non_neg_int.of_int"
end

module Pos_int = struct
  type t = int
  let of_int n = if n > 0 then n else invalid_arg "Pos_int.of_int"
end

module Unit_float = struct
  type t = float
  let of_float t = if t < 0.0 || t > 1.0 then invalid_arg "Unit_float.of_float" else t
end


module Std = struct
  type neg_int = Neg_int.t
  type non_neg_float = Non_neg_float.t
  type non_neg_int = Non_neg_int.t
  type pos_int = Pos_int.t
  type unit_float = Unit_float.t
  let neg_int = Neg_int.of_int
  let non_neg_float = Non_neg_float.of_float
  let non_neg_int = Non_neg_int.of_int
  let pos_int = Pos_int.of_int
  let unit_float = Unit_float.of_float
end
