
(* --------------------------------------------
solution for assigments on washington university
CSE341, Autumn 2007
https://courses.cs.washington.edu/courses/cse341/07au/

-------------------------------------------- *)


(*

val pow = fn : int * int -> int
val sumTo = fn : int -> real
val repeat = fn : string * int -> string
val twos = fn : int -> int
val numNegative = fn : int list -> int
val absList = fn : (int * int) list -> (int * int) list
val split = fn : int list -> (int * int) list

TODO:
val range = fn : int * int -> int list
val hailstone = fn : int -> int list
val isSorted = fn : int list -> bool
val collapse = fn : int list -> int list
val insert = fn : int * int list -> int list
val isort = fn : int list -> int list
val factors = fn : int -> int list
	
	
*)



fun pow1 (x,y) = if y = 0 then 1 else x * pow1(x,y-1);

fun pow2 x 0 = 1
|   pow2 x y = x * pow2 x (y-1);

(**************************************************)
fun sumTo (n) = if n = 0 then 0.0 else (1.0 / real(n)) + sumTo(n-1);

fun sumTo2 0 = 0.0
|   sumTo2 n =  (1.0 / real(n)) + sumTo2 (n-1);

sumTo 2;
sumTo2 2;
(**************************************************)

fun repeat (str, n) = if (n < 1) then "" else str ^ repeat (str, n-1);
repeat ("abc",0);
repeat ("abc",1);
repeat ("abc",10);
(**************************************************)

(*twos??*)	
fun twos 0 = 0
|	twos n = if (n mod 2 = 0) then 1 + twos(n div 2) else 0;

twos 30;
twos 120;
twos 12;
twos 8;
twos 16;
(**************************************************)

fun numNegative [] = 0
|   numNegative (x::l)  = if x >= 0 then numNegative l else 1 + numNegative l; 

(**************************************************) 

fun absList [] = []
|	absList ((x,y)::l) = (abs(x),abs(y))::absList l;

absList;

(**************************************************) 


fun split []     = []
|	split (x::l) =  (if x > 0 then (x div 2, x - (x div 2)) 
					else (0,0)) :: split(l)
;
split([5, 6, 8, 17, 93, 0]);

(**************************************************) 

(**************************************************) 