
(*function computes the nth Fibonacci number*)
fun fib x = if x = 1 orelse x = 2 then 1 else fib(x-1)+fib(x-2);

(*Test*)

fib 1;
fib 2;
fib 5; (*5*)
fib 8; (*21*)
fib 41; (*165 580 141*)