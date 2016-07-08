(*function returns a list of the same length as its argument, where each item in the returned list is the square of the corresponding item in the argument list*)

fun squareList [] = []
|	squareList (x:l) = (x * x) :: squareList l;