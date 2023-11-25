
(* something to be printed on a 7 segment displayer *)
let default_7seg = (true,true,true,true,true,true,true,false);;


(* [counter (reset)] is instantaneous, 
   it increments its output each time it is re-executed *)
let counter (reset) =
  let inc(c) = 
    if reset then 0 else c + 1 
  in 
  reg inc last 0 ;;


(* blink a led each n clock cycles *)
let blink (n) =
  let inc c = if c = n + n then 0 else c + 1 in
  let x = (reg inc last 0) > n in
  (x,not x,not x,x,x,not x,not x,x) ;;


(** main is a reactive program (calling ocaml_vm), 
    which can be adapt to have more, or different I/Os *)
(* let main (button) =
  let cy = counter(button) in
  if button then (default_7seg, default_7seg) 
  else (let (stop,busy,vm_7seg) = ocaml_vm (cy,default_7seg) in
  
        (blink(10000000), vm_7seg)) ;;

*)

(*
let vhex1 = (true,false,true,false,true,false,true,false) ;;

let vhex2 = (false,true,false,true,false,true,false,true) ;;

let main (((sw0,sw1,sw2,sw3,sw4,sw5,sw6,sw7,sw8,sw9),(key1,key2)) : 
          ((bool * bool * bool * bool * bool * bool * bool * bool * bool * bool) *
           (bool * bool))) =
  
  let button = sw0 in

  let cy = counter(button) in

  let (stop,busy,vm_7seg) = ocaml_vm (cy,default_7seg) in
  
  let (v1,v2) = (blink(10000000), vm_7seg) in

  let led0 = sw0 in
  let led1 = sw1 in
  let led2 = sw2 in
  let led3 = sw3 in
  let led4 = sw4 in
  let led5 = sw5 in
  let led6 = sw6 in
  let led7 = sw7 in
  let led8 = sw8 in
  let led9 = sw9 in

  let hex0 = v1 in (* if key1 then vhex1 else vhex2 in *)
  let hex1 = v2 in (* if key1 then vhex2 else vhex2 in *)
  let hex2 = if key1 then vhex1 else vhex2 in
  let hex3 = if key2 then vhex1 else vhex2 in
  let hex4 = if key2 then vhex1 else vhex2 in
  let hex5 = if key2 then vhex2 else vhex1 in

  let leds = (led0,led1,led2,led3,led4,led5,led6,led7,led8,led9) in
  let hexs = (hex0,hex1,hex2,hex3,hex4,hex5) in
  (leds,hexs)

;;*)


let main (_ : 
          ((bool * bool * bool * bool * bool * bool * bool * bool * bool * bool) *
           (bool * bool))) =

let cy = counter(false) in
  let (stop,busy,vm_7seg) = ocaml_vm (cy,default_7seg) in
  (* blink(10000000), *)
  ((false,false,false,false,false,false,false,false,false,false),
   (vm_7seg,vm_7seg,vm_7seg,vm_7seg,vm_7seg,vm_7seg)) ;;
(*
let vhex1 = (true,false,true,false,true,false,true,false) ;;

let vhex2 = (false,true,false,true,false,true,false,true) ;;

let main (((sw0,sw1,sw2,sw3,sw4,sw5,sw6,sw7,sw8,sw9),(key1,key2)) : 
          ((bool * bool * bool * bool * bool * bool * bool * bool * bool * bool) *
           (bool * bool))) =
  
  let button = sw0 in

  let cy = counter(button) in

  let (stop,busy,vm_7seg) = ocaml_vm (cy,default_7seg) in
  
  let (v1,v2) = (blink(10000000), vm_7seg) in

  let led0 = sw0 in
  let led1 = sw1 in
  let led2 = sw2 in
  let led3 = sw3 in
  let led4 = sw4 in
  let led5 = sw5 in
  let led6 = sw6 in
  let led7 = sw7 in
  let led8 = sw8 in
  let led9 = sw9 in

  let hex0 = v1 in (* if key1 then vhex1 else vhex2 in *)
  let hex1 = v2 in (* if key1 then vhex2 else vhex2 in *)
  let hex2 = if key1 then vhex1 else vhex2 in
  let hex3 = if key2 then vhex1 else vhex2 in
  let hex4 = if key2 then vhex1 else vhex2 in
  let hex5 = if key2 then vhex2 else vhex1 in

  let leds = (led0,led1,led2,led3,led4,led5,led6,led7,led8,led9) in
  let hexs = (hex0,hex1,hex2,hex3,hex4,hex5) in
  (leds,hexs)

;;*)