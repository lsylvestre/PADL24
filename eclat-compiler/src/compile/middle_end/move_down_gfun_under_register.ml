
open Ast

let map_under_register f e =
  let rec aux e =
    match e with
    | E_step(e1,k) ->
        E_step(f e1,k)
    | E_par(e1,e2) ->
        E_par(f e1, f e2)
    | E_reg _ | E_exec _ ->
        assert false (* already expanded *)
    | e -> Ast_mapper.map aux e
  in aux e


let move_down_gfun_under_register_exp y ds e =
  let f e =
    let e_prepared_for_lambda_lifting = (Anf.anf e) in
    let rec loop e = function
    | [] -> e
    | (x,_)::_ when x = y -> e
    | (x,ex)::l -> E_letIn(P_var x,ex,loop e l)
    in
      loop e_prepared_for_lambda_lifting ds
  in
  map_under_register f e


let move_down_gfun_under_register_pi pi =
  let ds = List.map (fun (x, e) -> x, move_down_gfun_under_register_exp x pi.ds e) pi.ds in
  let main = move_down_gfun_under_register_exp (gensym()) pi.ds pi.main in
  {pi with ds ; main}
