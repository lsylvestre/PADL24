open Ast
open Ast_subst

(* inline a program given in ANF, lambda-lifted form. The resulting program is
   in lambda-lifted-form but not necessarily in ANF-form. *)

(** [inline e] returns a non-ANF expression in which non-recursive functions
    are inlined *)
let rec inline e =
  match e with
  | E_app(E_fun(p,e1),e2) ->
     (* substitution is needed (rather than a let-binding)
        since e2 could be a function (fun x -> e3)       (* no, first order now *) (* ah ? *) *)
     inline @@ subst_p_e p e2 e1
  | E_lastIn(x,e1,e2) ->
      let y = gensym () in
      E_lastIn(y,inline e1,subst_e x (E_var y) (inline e2))
  | E_step _ | E_par _ -> e (* do not transform sub-expressions under step and // *)
  | e -> Ast_mapper.map inline e


(** [inl pi] inlines non-recursive functions in program [pi].
   assumes that [ds] bind name to functions ([fun x -> e] or [fix f (fun x -> e)]) *)
let rec inl (ds,e) =
  let rec aux recd_and_globals ds e =
    match ds with
    | [] ->
       List.rev_map (fun (x,e) -> x,inline e) recd_and_globals, inline e
    | (x,(E_fix(f,(p,ef))))::fs' ->
        assert (not (Pattern.pat_mem f p));
        aux ((x,E_fix(x,(p,subst_e f (E_var x) ef)))::recd_and_globals) fs' e
    | (x,(E_fun _ as ex))::ds' -> (* super-static environment *)
       let ss e = (subst_e x ex e) in
       aux recd_and_globals (List.map (fun (x,e) -> x, ss e) ds') (ss e)
    | (x,e2)::fs' -> aux ((x,e2)::recd_and_globals) fs' e
       (* assume that [e] is the global definition of a constant or a static array *)
  in
  aux [] ds e

let inl_pi pi =
  let ds,main = inl (pi.ds, pi.main) in
  { pi with ds ; main }
