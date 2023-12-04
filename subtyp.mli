module Float : sig
  module Neg : sig
    type t = private float
    val of_float : float -> t
  end
  module Non_neg : sig
    type t = private float
    val of_float : float -> t
    val zero : t
  end
  module Pos : sig
    type t = private float
    val of_float : float -> t
  end
  module Unit : sig
    type t = private float
    val of_float : float -> t
    val one : t
    val zero : t
  end
end

module Int : sig
  module Neg : sig
    type t = private int
    val minus_one : t
    val of_int : int -> t
  end
  module Non_neg : sig
    type t = private int
    val of_int : int -> t
    val zero : t
  end
  module Pos : sig
    type t = private int
    val of_int : int -> t
    val one : t
  end
end

module List : sig
  module Non_empty : sig
    type 'a t = 'a * 'a list
    val of_list : 'a list -> 'a t
  end
end

module Open : sig
  type neg_float = Float.Neg.t
  type neg_int = Int.Neg.t
  type 'a non_empty_list = 'a List.Non_empty.t
  type non_neg_float = Float.Non_neg.t
  type non_neg_int = Int.Non_neg.t
  type pos_float = Float.Pos.t
  type pos_int = Int.Pos.t
  type unit_float = Float.Unit.t

  val neg_float : float -> neg_float
  val neg_int : int -> neg_int
  val non_empty_list : 'a list -> 'a non_empty_list
  val non_neg_float : float -> non_neg_float
  val non_neg_int : int -> non_neg_int
  val pos_float : float -> pos_float
  val pos_int : int -> pos_int
  val unit_float : float -> unit_float
end
