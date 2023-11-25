(* expand each [reg] and [exec] constructs in the given epxression 
   into one equivalent expression using [var/in], [x <- e] and [step] constructs *)

open Ast

let rec encode (e:e) : e =
  let ss = encode in
  match e with
  | E_reg(V (E_var f),e0) ->
      let x = gensym () in
      ss @@ E_reg(V (E_fun(P_var x, E_app(E_var f,E_var x))),e0)
  | E_reg(V (E_fun (p,e1)),e0) ->
      let x = gensym () in
      ss @@
      E_lastIn(x, e0,
      E_letIn(p, E_var x,
      E_letIn(P_unit, E_set(x,e1), E_var x)))
  | E_reg _ -> assert false (* update function must be a value *)
  | E_exec(e1,e0,k) ->
      ss @@
      let res = gensym ~prefix:"res" () in
      let y = gensym () in
      let k = gensym () in
      (* todo: use a default value "nil" to avoid the duplication of e0 *)
      E_lastIn(res,E_tuple[e0;E_const(Bool false)],
      E_letIn(P_unit, E_step(E_letIn(P_unit,(E_set(res,E_tuple[e0;E_const(Bool false)])),
                                   E_letIn(P_var y,e1,E_set(res,E_tuple[E_var y;E_const(Bool true)]))),k), E_var res))
  | e -> Ast_mapper.map encode e


let encode_pi (pi:pi) : pi =
  Map_pi.map encode pi
