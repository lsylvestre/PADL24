open Ast
open Ast_subst

let rec name e =
  match e with
  | E_fun(x,e1) -> (* anonymus functions are named *)
      let f = gensym () in
      E_letIn(P_var f,E_fun(x,name e1), E_var f)
  | E_fix(f,(x,e1)) -> (* anonymus tail-recursive functions are named *)
      E_letIn(P_var f,E_fix(f,(x,name e1)), E_var f)
  | E_letIn(p,E_fun(p2,e1),e2) ->
      E_letIn(p,E_fun(p2,name e1),name e2)
  | E_letIn((P_var f) as p,E_fix(g,(p2,e1)),e2) ->
      E_letIn(p,E_fix(g,(p2,subst_e g (E_var f) (name e1))),name e2) (* why in this file ? *)
  | e -> Ast_mapper.map name e


let name_top (e:e) : e =
  match e with
  | E_fun(p,e) -> E_fun(p,name e)
  | E_fix(f,(p,e)) -> E_fix(f,(p,name e))
  | _ -> e

let name_pi pi =
  let ds = List.map (fun (x,e) -> (x,name_top e)) pi.ds in
  let main = name_top pi.main in
  { pi with ds ; main }
 