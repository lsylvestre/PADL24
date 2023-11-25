open Ast
open Ast_subst
open Ast_rename


let rec instantiate e =
  match e with
  | E_step(e1,_) ->
      E_step(instantiate e1,gensym ())
  | E_reg(V ev,e0) ->
      let y = gensym ~prefix:"instance" () in
      E_reg(V (E_fun(P_var y,E_app(ev,(E_var y)))),instantiate e0)
  | E_exec(e1,e2,_) ->
      E_exec(instantiate e1,instantiate e2,gensym ())
  | e -> Ast_mapper.map instantiate e

let instantiate_prog (ds,e) =
  List.map (fun (x,e) -> x,instantiate e) ds, instantiate e

let instantiate_pi pi =
  Map_pi.map instantiate pi
