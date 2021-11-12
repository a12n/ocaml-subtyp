module Neg_int : sig
  type t = private int
  val minus_one : t
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

module Pos_int : sig
  type t = private int
  val of_int : int -> t
  val one : t
end

module Pos_float : sig
  type t = private float
  val of_float : float -> t
end

module Unit_float : sig
  type t = private float
  val of_float : float -> t
  val one : t
  val zero : t
end


module Non_empty_list : sig
  type 'a t = private 'a list
  val of_list : 'a list -> 'a t
end


module Open : sig
  type neg_int = Neg_int.t
  type 'a non_empty_list = 'a Non_empty_list.t
  type non_neg_float = Non_neg_float.t
  type non_neg_int = Non_neg_int.t
  type pos_float = Pos_float.t
  type pos_int = Pos_int.t
  type unit_float = Unit_float.t

  val neg_int : int -> neg_int
  val non_empty_list : 'a list -> 'a non_empty_list
  val non_neg_float : float -> non_neg_float
  val non_neg_int : int -> non_neg_int
  val pos_float : float -> pos_float
  val pos_int : int -> pos_int
  val unit_float : float -> unit_float
end
