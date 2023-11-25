let caml_prepare_args1(v) =
  (v,(val_unit,(val_unit,(val_unit,val_unit)))) ;;

let caml_prepare_args2(v1,v2) =
  (v1,(v2,(val_unit,(val_unit,val_unit)))) ;;

let caml_prepare_args3(v1,v2,v3) =
  (v1,(v2,(v3,(val_unit,val_unit)))) ;;

let caml_prepare_args4(v1,v2,v3,v4) =
  (v1,(v2,(v3,(v4,val_unit)))) ;;


let caml_prepare_args5(v1,v2,v3,v4,v5) =
  (v1,(v2,(v3,(v4,v5)))) ;;

(* ************************** *)

let caml_print_int ((v1,_),st) =
  print_string "======> "; 
  print_int (long_val v1);
  print_newline ();
  (val_unit,st) ;;

let caml_identity(arg,st) = (arg,st) ;;


let caml_fresh_oo_id(_,st) =
  let gensym n = n + 1 in
  (val_long (reg gensym last 0),st) ;;

let caml_equal ((v1,(v2,_)),st) =
  let b = long_val(v1) = long_val(v2) in
  let v = val_long(int_of_bool(b)) in
  (v,st) ;;

let caml_lessthan ((v1,(v2,_)),st) =
  let b = long_val(v1) < long_val(v2) in
  let v = val_long(int_of_bool(b)) in
  (v,st) ;;

let caml_greaterthan ((v1,(v2,_)),st) =
  let b = long_val(v1) > long_val(v2) in
  let v = val_long(int_of_bool(b)) in
  (v,st) ;;

let caml_greaterequal ((v1,(v2,_)),st) =
  let b = long_val(v1) >= long_val(v2) in
  let v = val_long(int_of_bool(b)) in
  (v,st) ;;

let caml_lessequal ((v1,(v2,_)),st) =
  let b = long_val(v1) <= long_val(v2) in
  let v = val_long(int_of_bool(b)) in
  (v,st) ;;

let caml_obj_dup(arg,st) = (val_unit,st) ;;(* todo:
  let sz = size_val(arg) in
  if sz == 0 then arg else
  let tag = char_of_short(tag_val arg) in
  let res = make_block(tag,sz) in
  let rec w(i) =
    if i >= sz then () else
    (set_field(res,i,(get_field(arg,i))); w(i+1))
  in 
  w(0);
  res;;*)