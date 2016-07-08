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