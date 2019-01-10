Red []

my-abs: func [x] [
   either (x >= 0) [x][x * -1]]


(4 > 2) and (6 > 2)

(4 > 44) or (44 > 4)



epsilon: 0.001
good-enough: func [guess x] [(absolute (guess * guess) - x) < epsilon]
improve: func [guess x] [average reduce [guess (x / guess)]]
sqrt-iter: func [guess x] [either (good-enough guess x) [guess][sqrt-iter (improve guess x) x]]
my-sqrt: func [x] [sqrt-iter 1.0 x]

factorial: func [n][
    either n = 1 [1][
        n * factorial (n - 1)
    ]
]


;https://github.com/metaperl/whatnot/blob/master/red/memoize.red

;do %../whatnot/red/memoize.red

; https://mitpress.mit.edu/sites/default/files/sicp/full-text/book/book-Z-H-11.html#%_sec_1.2.2
fib: func [n][
    case [
        n = 0 [0]
        n = 1 [1]
        true [fib (n - 1) + fib (n - 2)]
    ]
]

memoize :fib