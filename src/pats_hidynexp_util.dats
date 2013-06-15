(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Postiats - Unleashing the Potential of Types!
** Copyright (C) 2011-20?? Hongwei Xi, ATS Trustful Software, Inc.
** All rights reserved
**
** ATS is free software;  you can  redistribute it and/or modify it under
** the terms of  the GNU GENERAL PUBLIC LICENSE (GPL) as published by the
** Free Software Foundation; either version 3, or (at  your  option)  any
** later version.
** 
** ATS is distributed in the hope that it will be useful, but WITHOUT ANY
** WARRANTY; without  even  the  implied  warranty  of MERCHANTABILITY or
** FITNESS FOR A PARTICULAR PURPOSE.  See the  GNU General Public License
** for more details.
** 
** You  should  have  received  a  copy of the GNU General Public License
** along  with  ATS;  see the  file COPYING.  If not, please write to the
** Free Software Foundation,  51 Franklin Street, Fifth Floor, Boston, MA
** 02110-1301, USA.
*)

(* ****** ****** *)
//
// Author: Hongwei Xi (hwxi AT cs DOT bu DOT edu)
// Start Time: September, 2012
//
(* ****** ****** *)

staload UN = "./prelude/SATS/unsafe.sats"
staload _(*anon*) = "prelude/DATS/list.dats"

(* ****** ****** *)

staload "./pats_errmsg.sats"
staload _(*anon*) = "./pats_errmsg.dats"
implement prerr_FILENAME<> () = prerr "pats_hidynexp_util"

(* ****** ****** *)

staload "./pats_basics.sats"

(* ****** ****** *)

staload LAB = "./pats_label.sats"
overload = with $LAB.eq_label_label

(* ****** ****** *)

staload S2E = "./pats_staexp2.sats"
staload D2E = "./pats_dynexp2.sats"
overload = with $S2E.eq_d2con_d2con

(* ****** ****** *)

staload "./pats_histaexp.sats"
staload "./pats_hidynexp.sats"

(* ****** ****** *)
//
implement
d2cst_get2_hisexp (d2c) =
  $UN.cast{hisexpopt}($D2E.d2cst_get_hisexp(d2c))
implement
d2cst_set2_hisexp (d2c, opt) =
  $D2E.d2cst_set_hisexp (d2c, $UN.cast{$D2E.hisexpopt}(opt))
//
(* ****** ****** *)

implement
$D2E.d2cst_is_fun
  (d2c) = let
//
val-Some (hse) = d2cst_get2_hisexp (d2c)
//
in
//
case+
  hse.hisexp_node of
| HSEfun (fc, _arg, _res) =>
  (
    case+ fc of FUNCLOfun () => true | _ => false
  ) // end of [HSEfun]
| _ => false // end of [_]
//
end // end of [$D2E.d2cst_is_fun]

(* ****** ****** *)

implement
d2cst_get2_type_arg
  (d2c) = let
//
val-Some(hse) = d2cst_get2_hisexp (d2c)
//
in
//
case+ hse.hisexp_node of
| HSEfun (
    _(*fc*), _arg, _(*res*)
  ) => _arg
| _ => let
    val () = prerr_interror ()
    val (
    ) = (
      prerrln! (": d2cst_get_type_arg: hse = ", hse)
    ) // end of [val]
    val () = assertloc (false)
  in
    exit (1) // HX: this is deadcode
  end (* end of [_] *)
//
end // end of [d2cst_get2_type_arg]

implement
d2cst_get2_type_res
  (d2c) = let
//
val-Some(hse) = d2cst_get2_hisexp (d2c)
//
in
//
case+
  hse.hisexp_node of
| HSEfun (
    _(*fc*), _(*arg*), _res
  ) => _res
| _ => let
    val () = prerr_interror ()
    val (
    ) = (
      prerrln! (": d2cst_get_type_arg: hse = ", hse)
    ) // end of [val]
    val () = assertloc (false)
  in
    exit (1) // HX: this is deadcode
  end (* end of [_] *)
//
end // end of [d2cst_get_type_res]

(* ****** ****** *)
//
implement
d2var_get2_hisexp (d2v) =
  $UN.cast{hisexpopt}($D2E.d2var_get_hisexp(d2v))
implement
d2var_set2_hisexp (d2v, opt) =
  $D2E.d2var_set_hisexp (d2v, $UN.cast{$D2E.hisexpopt}(opt))
//
(* ****** ****** *)

implement
d2cst_get2_funclo (d2c) = let
  val opt = d2cst_get2_hisexp (d2c)
in
//
case+ opt of
| Some (hse) =>
  (
    case+ hse.hisexp_node of
    | HSEfun (fc, _, _) => Some_vt (fc) | _ => None_vt ()
  )
| None () => None_vt ()
//
end // end of [d2cst_get2_funclo]

(* ****** ****** *)

implement
d2var_get2_funclo (d2v) = let
  val opt = d2var_get2_hisexp (d2v)
in
//
case+ opt of
| Some (hse) =>
  (
    case+ hse.hisexp_node of
    | HSEfun (fc, _, _) => Some_vt (fc) | _ => None_vt ()
  )
| None () => None_vt ()
//
end // end of [d2var_get2_funclo]

(* ****** ****** *)

implement
hipat_is_wild
  (hip) = let
in
//
case+
  hip.hipat_node of
| HIPany _ => true
| HIPvar _ => true
| HIPann (hip, _) => hipat_is_wild (hip)
| HIPrefas (_, hip) => hipat_is_wild (hip)
| _ => false
//
end // end of [hipat_is_wild]

implement
hipatlst_is_wild
  (hips) = list_forall_fun (hips, hipat_is_wild)
// end of [hipatlst_is_wild]

implement
labhipatlst_is_wild
  (lhips) = let
//
fun labhipat_is_wild
  (lhip: labhipat): bool = let
  val LABHIPAT (_, hip) = lhip in hipat_is_wild (hip)
end // end of [labhipat_is_wild]
//
in
  list_forall_fun (lhips, labhipat_is_wild)
end // end of [labhipatlst_is_wild]

(* ****** ****** *)

implement
hipat_subtest
  (hip1, hip2) = let
//
(*
val () =
(
  println! ("hipat_subtest: hip1 = ", hip1);
  println! ("hipat_subtest: hip2 = ", hip2);
) // end of [val]
*)
//
val hipn1 = hip1.hipat_node
val hipn2 = hip2.hipat_node
//
in
//
case+
  (hipn1, hipn2) of
//
| (_, HIPany _) => true
| (_, HIPvar _) => true
| (_, HIPann (hip2, _)) => hipat_subtest (hip1, hip2)
| (_, HIPrefas (_, hip2)) => hipat_subtest (hip1, hip2)
//
| (HIPann (hip1, _), _) => hipat_subtest (hip1, hip2)
| (HIPrefas (_, hip1), _) => hipat_subtest (hip1, hip2)
//
| (HIPcon
    (_, d2c1, _, lxs1), _) => (
  case+ hipn2 of
  | HIPcon (_, d2c2, _, lxs2) =>
    (
      if d2c1 = d2c2
        then labhipatlst_subtest (lxs1, lxs2) else false
      // end of [if]
    )
  | HIPcon_any (_, d2c2) => d2c1 = d2c2
  | _ => false
  )
| (HIPcon_any (_, d2c1), _) => (
  case+ hipn2 of
  | HIPcon (_, d2c2, _, lxs2) =>
      if d2c1 = d2c2 then labhipatlst_is_wild (lxs2) else false
  | HIPcon_any (_, d2c2) => d2c1 = d2c2
  | _ => false
  )
//
| (HIPint i1, _) => (
  case+ hipn2 of HIPint i2 => i1 = i2 | _ => false
  )
| (HIPbool b1, _) => (
  case+ hipn2 of HIPbool b2 => b1 = b2 | _ => false
  )
| (HIPchar c1, _) => (
  case+ hipn2 of HIPchar c2 => c1 = c2 | _ => false
  )
| (HIPstring str1, _) => (
  case+ hipn2 of HIPstring str2 => str1 = str2 | _ => false
  )
| (HIPfloat f1, _) => (
  case+ hipn2 of HIPfloat f2 => f1 = f2 | _ => false
  )
//
| (HIPempty (), _) => (
  case+ hipn2 of HIPempty () => true | _ => false
  )
//
| (HIPlst (_, xs1), _) => (
  case+ hipn2 of
  | HIPlst (_, xs2) => hipatlst_subtest (xs1, xs2) | _ => false
  )
| (HIPrec (_, lxs1, _), _) => (
  case+ hipn2 of
  | HIPrec (_, lxs2, _) => labhipatlst_subtest (lxs1, lxs2) | _ => false
  )
//
| (_, _) => false
//
end // end of [hipat_subtest]

(* ****** ****** *)

implement
hipatlst_subtest
  (xs1, xs2) = let
in
//
case+ xs1 of
| list_cons
    (x1, xs1) => (
  case+ xs2 of
  | list_cons (x2, xs2) =>
    (
      if hipat_subtest (x1, x2)
        then hipatlst_subtest (xs1, xs2) else false
      // end of [if]
    )
  | list_nil () => false
  )
| list_nil () => (
  case+ xs2 of list_cons _ => false | list_nil () => true
  )
//
end // end of [hipatlst_subtest]

(* ****** ****** *)

local

fun labhipat_subtest
(
  lx1: labhipat, lx2: labhipat
) : bool = let
//
val+LABHIPAT (l1, x1) = lx1
val+LABHIPAT (l2, x2) = lx2
//
in
  if l1 = l2 then hipat_subtest (x1, x2) else false
end // end of [labhipat_subtest]

in (* in of [local] *)

implement
labhipatlst_subtest
  (lxs1, lxs2) = let
in
//
case+ lxs1 of
| list_cons
    (lx1, lxs1) => (
  case+ lxs2 of
  | list_cons (lx2, lxs2) =>
    (
      if labhipat_subtest (lx1, lx2)
        then labhipatlst_subtest (lxs1, lxs2) else false
      // end of [if]
    )
  | list_nil () => false
  )
| list_nil () => (
  case+ lxs2 of list_cons _ => false | list_nil () => true
  )
//
end // end of [labhipatlst_subtest]

end // end of [local]

(* ****** ****** *)

local

fun hidexplst_is_value
  (xs: hidexplst): bool =
  list_forall_fun (xs, hidexp_is_value)
// end of [hidexplst_is_value]

fun labhidexplst_is_value
  (lxs: labhidexplst): bool = let
//
fun ftest (lx: labhidexp) = let
  val LABHIDEXP (l, x) = lx in hidexp_is_value (x)
end // end of [fun]
//
in
  list_forall_fun (lxs, ftest)
end // end of [labhidexplst_is_value]

in (* in of [local] *)

implement
hidexp_is_value
  (hde0) = let
in
//
case+
  hde0.hidexp_node of
//
  | HDEvar _ => true
  | HDEcst _ => true
//
  | HDEbool _ => true
  | HDEchar _ => true
  | HDEstring _ => true
//
  | HDEi0nt _ => true
  | HDEf0loat _ => true
//
  | HDEextval _ => true
//
  | HDElam _ => true
  | HDErec (_, lhdes, _) => labhidexplst_is_value (lhdes)
//
  | HDEtmpcst _ => true
  | HDEtmpvar _ => true
//
  | _ => false
//
end // end of [hidexp_is_value]

end // end of [local]

(* ****** ****** *)
//
implement
hidexp_let_simplify
  (loc, hse, hids, hde) = hidexp_let (loc, hse, hids, hde)
//
(* ****** ****** *)

(* end of [pats_hidynexp_util.dats] *)
