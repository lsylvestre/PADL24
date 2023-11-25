open Ast
open Ast_subst

(* given an AST, ensures that definitions of tail-recursive functions
   are of the form [let f = fix f (fun x -> e) in e1] *)

let rec rename f (e:e) : e =
  match e with
  | E_deco(e,d) -> E_deco(rename f e,d)
  | E_app(E_const(Op(TyConstr ty)),e) -> E_app(E_const(Op(TyConstr ty)),rename f e)
  | E_fix(g,(p,e)) -> E_fix(f,(p,subst_e g (E_var f) e))
  | e -> e

let rec ensure_rec_naming_e e =
  let ss = ensure_rec_naming_e in
  match e with
  | E_letIn(p,e1,e2) ->
      (match un_annot e1,p with
      | E_fix _,P_var f -> E_letIn(P_var f,rename f (ss e1),ss e2)
      | _ -> E_letIn(p,ss e1,ss e2))
  | e -> Ast_mapper.map ensure_rec_naming_e e

let ensure_rec_naming_pi pi =
  let ds = List.map (fun (x,e) -> x,ensure_rec_naming_e e) pi.ds in
  let main = ensure_rec_naming_e pi.main in
  { pi with ds ; main }
