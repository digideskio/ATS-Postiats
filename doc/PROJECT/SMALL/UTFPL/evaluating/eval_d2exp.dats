(*
** Implementing UTFPL
** with closure-based evaluation
*)

(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)
//
staload
"./../utfpl.sats"
//
staload "./eval.sats"
//
(* ****** ****** *)

local

typedef
aux_type (a:type) = (cloenv, a) -> value
//
extern fun aux_d2cst : aux_type (d2cst)
extern fun aux_d2var : aux_type (d2var)
extern fun aux_d2exp : aux_type (d2exp)
//
extern fun aux_d2exp_app (cloenv, value, d2explst): value
extern fun aux_d2exp_applst (cloenv, value, d2exparglst): value
//
extern fun aux_d2expopt : aux_type (d2expopt)
//
typedef
auxlst_type (a:type) = (cloenv, List(a)) -> valuelst
extern fun auxlst_d2exp : auxlst_type (d2exp)

(* ****** ****** *)

implement
aux_d2exp
  (env, d2e0) = let
in
//
case+ d2e0.d2exp_node of
//
| D2Ecst (d2c) => eval_d2cst (env, d2c)
| D2Evar (d2v) => eval_d2var (env, d2v)
//
| D2Esym (d2s) => eval_d2sym (env, d2s)
//
| D2Eint (i) => VALint (i)
| D2Echar (c) => VALchar (c)
| D2Efloat (d) => VALfloat (d)
| D2Estring (str) => VALstring (str)
//
| D2Ei0nt (rep) => VALint (g0string2int(rep))
| D2Ef0loat (rep) => VALfloat (g0string2float(rep))
| D2Es0tring (str) => VALstring (str)
//
| D2Eempty () => VALvoid ()
//
| D2Eexp (d2e) => aux_d2exp (env, d2e)
//
| D2Elet
    (d2cs, d2e_scope) => let
    val env2 =
      eval_d2eclist (env, d2cs)
    // end of [val]
  in
    eval_d2exp (env2, d2e_scope)
  end // end of [D2Elet]
//
| D2Eapplst
    (d2e, d2as) => let
    val v_fun = aux_d2exp (env, d2e)
  in
    aux_d2exp_applst (env, v_fun, d2as)
  end // end of [D2Eapplst]
//
| D2Eifopt
    (d2e1, d2e2, d2eopt3) => let
    val-VALbool(test) = aux_d2exp (env, d2e1)
  in
    if test
      then aux_d2exp (env, d2e2)
      else aux_d2expopt (env, d2eopt3)
    // end of [if]
  end // end of [D2Eifopt]
//
| D2Elam _ => VALlam (d2e0, env)
| D2Efix _ => VALfix (d2e0, env)
//
| _(*rest*) => VALerror ("not-supported-d2exp")
//
end // end of [aux_d2exp]

(* ****** ****** *)

implement
aux_d2exp_app
  (env, v_fun, d2es_arg) = let
//
val vs_arg = auxlst_d2exp (env, d2es_arg)
//
in
//
case+ v_fun of
| VALlam
    (d2e, env) => let
    val-D2Elam
      (p2ts_arg, d2e_body) = d2e.d2exp_node
    val env = cloenv_extend_arglst (env, p2ts_arg, vs_arg)
  in
    aux_d2exp (env, d2e_body)
  end // end of [VALlam]
//
| VALfix
    (d2e, env) => let
    val-D2Efix
      (d2v, p2ts_arg, d2e_body) = d2e.d2exp_node
    val env = cloenv_extend (env, d2v, v_fun)
    val env = cloenv_extend_arglst (env, p2ts_arg, vs_arg)
  in
    aux_d2exp (env, d2e_body)
  end // end of [VALfix]
//
| VALfun (mfn) => mfn (vs_arg) // meta-function
//
| _(*rest*) => VALerror ("non-function-call")
//
end // end of [aux_d2exp_app]

(* ****** ****** *)

implement
aux_d2exp_applst
  (env, v_fun, d2as) = let
in
//
case+ d2as of
| list_cons (d2a, d2as) =>
  (
    case+ d2a of
    | D2EXPARGsta _ =>
        aux_d2exp_applst (env, v_fun, d2as)
    | D2EXPARGdyn
        (_, _, d2es) => let
        val v_fun =
          aux_d2exp_app (env, v_fun, d2es)
        // end of [val]
      in
        aux_d2exp_applst (env, v_fun, d2as)
      end // end of [D2EXPARGlst]
  )
| list_nil ((*void*)) => v_fun
//
end // end of [aux_d2exp_applst]

(* ****** ****** *)

implement
aux_d2expopt (env, opt) =
(
case+ opt of
| Some (d2e) => aux_d2exp (env, d2e) | None () => VALvoid ()
) (* end of [aux_d2expopt] *)

(* ****** ****** *)

implement
auxlst_d2exp
  (env, d2es) = let
//
implement
list_map$fopr<d2exp><value> (d2e) = aux_d2exp (env, d2e)
//
in
  list_vt2t (list_map<d2exp><value> (d2es))
end // end of [auxlst_d2exp]

in (* in of [local] *)

implement eval_d2exp (env, d2e0) = aux_d2exp (env, d2e0)

end (* end of [local] *)

(* ****** ****** *)

(* end of [eval_d2exp.dats] *)
