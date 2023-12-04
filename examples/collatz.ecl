(* 



   $ cd eclat-compiler
   $ make
   $ ./eclat ../examples/collatz.ecl -arg="11" -relax

  (option -arg is used for simulation only and ignored for synthesis)

   $ cd ..
   $ make simul

*)



let rec collatz(n) =
    if n = 1 then 1 else
    if n mod 2 = 0 then collatz(n/2)
    else collatz(3*n+1) ;;

let main(n) =
  let x = collatz n
  and y = collatz (n+1) in (x,y) ;;
