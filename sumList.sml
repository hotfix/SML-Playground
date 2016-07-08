(*function computes the sum of all of the items in the list.*)

fun sumList []     = 0
  | sumList (x::l) = x + sumList l;
  
(*test*)
sumList nil;
sumList [2];
sumList [1,2,3,4,5]     