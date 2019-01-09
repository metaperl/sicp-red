Red []

my-abs: func [x] [
   either (x >= 0) [x][x * -1]]


(4 > 2) and (6 > 2)

(4 > 44) or (44 > 4)



epsilon: 0.001
good-enough: func [guess x] [(absolute (guess * guess) - x)  epsilon]
improve: func [guess x] [average [guess (x / guess)]]
sqrt-iter: func [guess x] [either (good-enough guess x) [guess][sqrt-iter (improve guess x) x]]
my-sqrt: func [x] [sqrt-iter 1.0 x]
