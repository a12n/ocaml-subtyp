module Integer = struct
  module Neg = struct
    type t = Z.t

    let minus_one = Z.minus_one

    let of_integer z =
      if Z.(gt z minus_one) then invalid_arg __FUNCTION__ else z
  end

  module Non_neg = struct
    type t = Z.t

    let zero = Z.zero
    let one = Z.one
    let of_integer z = if Z.(lt z zero) then invalid_arg __FUNCTION__ else z
  end

  module Pos = struct
    type t = Z.t

    let one = Z.one
    let of_integer z = if Z.(lt z one) then invalid_arg __FUNCTION__ else z
  end
end

module Rational = struct
  module Neg = struct
    type t = Q.t

    let minus_one = Q.minus_one
    let of_rational q = if Q.(geq q zero) then invalid_arg __FUNCTION__ else q
  end

  module Non_neg = struct
    type t = Q.t

    let zero = Q.zero
    let one = Q.one
    let of_rational q = if Q.(lt q zero) then invalid_arg __FUNCTION__ else q
  end

  module Pos = struct
    type t = Q.t

    let one = Q.one
    let of_rational q = if Q.(leq q zero) then invalid_arg __FUNCTION__ else q
  end

  module Unit = struct
    type t = Q.t

    let zero = Q.zero
    let one = Q.one

    let of_rational q =
      if Q.(lt q zero || gt q one) then invalid_arg __FUNCTION__ else q
  end
end

module Open = struct
  type neg_integer = Integer.Neg.t
  type non_neg_integer = Integer.Non_neg.t
  type non_neg_rational = Rational.Non_neg.t
  type pos_integer = Integer.Pos.t
  type pos_rational = Rational.Pos.t
  type unit_rational = Rational.Unit.t

  let neg_integer = Integer.Neg.of_integer
  let non_neg_integer = Integer.Non_neg.of_integer
  let non_neg_rational = Rational.Non_neg.of_rational
  let pos_integer = Integer.Pos.of_integer
  let pos_rational = Rational.Pos.of_rational
  let unit_rational = Rational.Unit.of_rational
end
