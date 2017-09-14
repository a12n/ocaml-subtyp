module Neg_int : sig
  type t = private int
  val neg_one : t
  val of_int : int -> t
end

module Non_neg_float : sig
  type t = private float
  val of_float : float -> t
  val zero : t
end

module Non_neg_int : sig
  type t = private int
  val of_int : int -> t
  val zero : t
end

module Non_neg_num : sig
  type t = private Num.num
  val of_num : Num.num -> t
  val zero : t
end

module Pos_int : sig
  type t = private int
  val of_int : int -> t
  val one : t
end

module Pos_float : sig
  type t = private float
  val of_float : float -> t
end

module Pos_num : sig
  type t = private Num.num
  val of_num : Num.num -> t
end

module Unit_float : sig
  type t = private float
  val of_float : float -> t
  val one : t
  val zero : t
end

module Unit_num : sig
  type t = private Num.num
  val of_num : Num.num -> t
  val one : t
  val zero : t
end


module Non_empty_list : sig
  type 'a t = 'a * 'a list
  val of_list : 'a list -> 'a t
  val to_list : 'a t -> 'a list
end
