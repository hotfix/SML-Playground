
(* --------------------------------------------
solution for excersices at Duke university
ECE 553, Spring 2014
http://people.ee.duke.edu/~adh39/courses/spring_2014/ece553/sml-intro.pdf

-------------------------------------------- *)

(*function returns the smaller of its two arguments*)
fun min (x,y)  = if x < y then x else y;

(*test*)

min(1,2);
min(2,1);
min(1,1);



(*function computes the nth Fibonacci number*)
fun fib x = if x = 1 orelse x = 2 then 1 else fib(x-1)+fib(x-2);

(*Test*)

fib 1;
fib 2;
fib 5; (*5*)
fib 8; (*21*)
fib 41; (*165 580 141*)

(*function computes the sum of all of the items in the list.*)

fun sumList []     = 0
  | sumList (x::l) = x + sumList l;
  
(*test*)
sumList nil;
sumList [2];
sumList [1,2,3,4,5];


(*function returns a list of the same length as its argument, where each item in the returned list is the square of the corresponding item in the argument list*)

fun squareList [] = []
|	squareList (x::l) = (x * x) :: squareList l;

squareList [1,2];
squareList [2,5,1,3];

(*function determines whether or not its argument is prime.*)

fun isPrime (2) = true
  | isPrime (x) = 
             let fun explore(m) =
                 if m >= x then true
                 else x mod m <> 0 andalso explore(m + 2)
             in x > 2 andalso x mod 2  <> 0 andalso explore(3)
             end
  			;

(*Test:*)
				
isPrime 2;
isPrime 3;
isPrime 4;
