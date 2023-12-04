module Integer : sig
  module Neg : sig
    type t = private Z.t

    val neg_one : t
    val of_integer : Z.t -> t
  end

  module Non_neg : sig
    type t = private Z.t

    val zero : t
    val one : t
    val of_integer : Z.t -> t
  end

  module Pos : sig
    type t = private Z.t

    val one : t
    val of_integer : Z.t -> t
  end
end

module Rational : sig
  module Neg : sig
    type t = private Q.t

    val minus_one : t
    val of_rational : Q.t -> t
  end

  module Non_neg : sig
    type t = private Q.t

    val zero : t
    val one : t
    val of_rational : Q.t -> t
  end

  module Pos : sig
    type t = private Q.t

    val one : t
    val of_rational : Q.t -> t
  end

  module Unit : sig
    type t = private Q.t

    val zero : t
    val one : t
    val of_rational : Q.t -> t
  end
end

module Open : sig
  type neg_integer = Integer.Neg.t
  type non_neg_integer = Integer.Non_neg.t
  type non_neg_rational = Rational.Non_neg.t
  type pos_integer = Integer.Pos.t
  type pos_rational = Rational.Pos.t
  type unit_rational = Rational.Unit.t

  val neg_integer : Z.t -> neg_integer
  val non_neg_integer : Z.t -> non_neg_integer
  val non_neg_rational : Q.t -> non_neg_rational
  val pos_integer : Z.t -> pos_integer
  val pos_rational : Q.t -> pos_rational
  val unit_rational : Q.t -> unit_rational
end
