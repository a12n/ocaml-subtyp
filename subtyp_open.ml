type neg_int = Subtyp.Neg_int.t
type non_neg_float = Subtyp.Non_neg_float.t
type non_neg_int = Subtyp.Non_neg_int.t
type non_neg_num = Subtyp.Non_neg_num.t
type pos_float = Subtyp.Pos_float.t
type pos_int = Subtyp.Pos_int.t
type pos_num = Subtyp.Pos_num.t
type unit_float = Subtyp.Unit_float.t

type 'a non_empty_list = 'a Subtyp.Non_empty_list.t

let neg_int = Subtyp.Neg_int.of_int
let non_neg_float = Subtyp.Non_neg_float.of_float
let non_neg_int = Subtyp.Non_neg_int.of_int
let non_neg_num = Subtyp.Non_neg_num.of_num
let pos_float = Subtyp.Pos_float.of_float
let pos_int = Subtyp.Pos_int.of_int
let pos_num = Subtyp.Pos_num.of_num
let unit_float = Subtyp.Unit_float.of_float

let non_empty_list = Subtyp.Non_empty_list.of_list
