
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
// Author: Hongwei Xi (gmhwxi AT gmail DOT com)
// Start Time: February, 2012
//
(* ****** ****** *)

staload UN = "prelude/SATS/unsafe.sats"

(* ****** ****** *)

staload "pats_staexp2.sats"
staload "pats_stacst2.sats"

(* ****** ****** *)

staload "pats_constraint3.sats"

(* ****** ****** *)

local
//
fun f_neg_bool (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let
  val- list_cons (s2e, s2es) = s2es
  val s3be = s3exp_make (env, s2e)
in
  s3exp_bneg (s3be)
end // end of [f_neg_bool]
//
fun f_add_bool_bool (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3be1 = s3exp_make (env, s2e1)
  val s3be2 = s3exp_make (env, s2e2)
in
  s3exp_badd (s3be1, s3be2)
end // end of [f_add_bool_bool]
//
fun f_mul_bool_bool (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3be1 = s3exp_make (env, s2e1)
  val s3be2 = s3exp_make (env, s2e2)
in
  s3exp_bmul (s3be1, s3be2)
end // end of [f_mul_bool_bool]
//
fun f_eq_bool_bool (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3be1 = s3exp_make (env, s2e1)
  val s3be2 = s3exp_make (env, s2e2)
in
  s3exp_beq (s3be1, s3be2)
end // end of [f_eq_bool_bool]
//
fun f_neq_bool_bool (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3be1 = s3exp_make (env, s2e1)
  val s3be2 = s3exp_make (env, s2e2)
in
  s3exp_bneq (s3be1, s3be2)
end // end of [f_neq_bool_bool]
//
fun f_lt_int_int (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3ie1 = s3exp_make (env, s2e1)
  val s3ie2 = s3exp_make (env, s2e2)
in
  s3exp_ilt (s3ie1, s3ie2)
end // end of [f_lt_int_int]
//
fun f_lte_int_int (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3ie1 = s3exp_make (env, s2e1)
  val s3ie2 = s3exp_make (env, s2e2)
in
  s3exp_ilte (s3ie1, s3ie2)
end // end of [f_lte_int_int]
//
fun f_gt_int_int (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3ie1 = s3exp_make (env, s2e1)
  val s3ie2 = s3exp_make (env, s2e2)
in
  s3exp_igt (s3ie1, s3ie2)
end // end of [f_gt_int_int]
//
fun f_gte_int_int (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3ie1 = s3exp_make (env, s2e1)
  val s3ie2 = s3exp_make (env, s2e2)
in
  s3exp_igte (s3ie1, s3ie2)
end // end of [f_gte_int_int]
//
fun f_eq_int_int (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3ie1 = s3exp_make (env, s2e1)
  val s3ie2 = s3exp_make (env, s2e2)
in
  s3exp_ieq (s3ie1, s3ie2)
end // end of [f_eq_int_int]
//
fun f_neq_int_int (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3ie1 = s3exp_make (env, s2e1)
  val s3ie2 = s3exp_make (env, s2e2)
in
  s3exp_ineq (s3ie1, s3ie2)
end // end of [f_neq_int_int]
//
fun f_lt_addr_addr (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3ae1 = s3exp_make (env, s2e1)
  val s3ae2 = s3exp_make (env, s2e2)
in
  s3exp_plt (s3ae1, s3ae2)
end // end of [f_lt_addr_addr]
//
fun f_lte_addr_addr (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3ae1 = s3exp_make (env, s2e1)
  val s3ae2 = s3exp_make (env, s2e2)
in
  s3exp_plte (s3ae1, s3ae2)
end // end of [f_lte_addr_addr]
//
fun f_gt_addr_addr (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3ae1 = s3exp_make (env, s2e1)
  val s3ae2 = s3exp_make (env, s2e2)
in
  s3exp_pgt (s3ae1, s3ae2)
end // end of [f_gt_addr_addr]
//
fun f_gte_addr_addr (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3ae1 = s3exp_make (env, s2e1)
  val s3ae2 = s3exp_make (env, s2e2)
in
  s3exp_pgte (s3ae1, s3ae2)
end // end of [f_gte_addr_addr]
//
fun f_eq_addr_addr (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3ae1 = s3exp_make (env, s2e1)
  val s3ae2 = s3exp_make (env, s2e2)
in
  s3exp_peq (s3ae1, s3ae2)
end // end of [f_eq_addr_addr]
//
fun f_neq_addr_addr (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3ae1 = s3exp_make (env, s2e1)
  val s3ae2 = s3exp_make (env, s2e2)
in
  s3exp_pneq (s3ae1, s3ae2)
end // end of [f_neq_addr_addr]

(* ****** ****** *)

fun f_add_int_int (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3ie1 = s3exp_make (env, s2e1)
  val s3ie2 = s3exp_make (env, s2e2)
in
  s3exp_iadd (s3ie1, s3ie2)
end // end of [f_add_int_int]
//
fun f_sub_int_int (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3ie1 = s3exp_make (env, s2e1)
  val s3ie2 = s3exp_make (env, s2e2)
in
  s3exp_isub (s3ie1, s3ie2)
end // end of [f_sub_int_int]
//
fun f_mul_int_int (
  env: &s2vbcfenv, s2es: s2explst
) : s3exp = let 
  val- list_cons (s2e1, s2es) = s2es
  val- list_cons (s2e2, s2es) = s2es
  val s3ie1 = s3exp_make (env, s2e1)
  val s3ie2 = s3exp_make (env, s2e2)
in
  s3exp_imul (s3ie1, s3ie2)
end // end of [f_mul_int_int]

(* ****** ****** *)

in // in of [local]

(* ****** ****** *)

implement
constraint3_initialize_map (map) = let
//
typedef tfun = (&s2vbcfenv, s2explst) -<fun1> s3exp
//
fun ins (
  map: &s2cfunmap, r: s2cstref, f: tfun
) : void = let
  val s2c = s2cstref_get_cst (r)
  val map1 = $UN.cast {s2cstmap(tfun)} (map)
  val map2 = s2cstmap_add (map1, s2c, f)
  val () = map := $UN.cast {s2cfunmap} (map2)
in
  (*nothing*)
end // end of [ins]
//
val () = ins (map, the_neg_bool, f_neg_bool)
val () = ins (map, the_add_bool_bool, f_add_bool_bool)
val () = ins (map, the_mul_bool_bool, f_mul_bool_bool)
val () = ins (map, the_eq_bool_bool, f_eq_bool_bool)
val () = ins (map, the_neq_bool_bool, f_neq_bool_bool)
//
val () = ins (map, the_lt_int_int, f_lt_int_int)
val () = ins (map, the_lte_int_int, f_lte_int_int)
val () = ins (map, the_gt_int_int, f_gt_int_int)
val () = ins (map, the_gte_int_int, f_gte_int_int)
val () = ins (map, the_eq_int_int, f_eq_int_int)
val () = ins (map, the_neq_int_int, f_neq_int_int)
//
val () = ins (map, the_lt_addr_addr, f_lt_addr_addr)
val () = ins (map, the_lte_addr_addr, f_lte_addr_addr)
val () = ins (map, the_gt_addr_addr, f_gt_addr_addr)
val () = ins (map, the_gte_addr_addr, f_gte_addr_addr)
val () = ins (map, the_eq_addr_addr, f_eq_addr_addr)
val () = ins (map, the_neq_addr_addr, f_neq_addr_addr)
//
val () = ins (map, the_add_int_int, f_add_int_int)
val () = ins (map, the_sub_int_int, f_sub_int_int)
val () = ins (map, the_mul_int_int, f_mul_int_int)
//
in
  (*nothing*)
end // end of [constraint3_sbexp_initialize_map]

(* ****** ****** *)

end // end of [local]

(* ****** ****** *)

(* end of [pats_constraint3_init.dats] *)
