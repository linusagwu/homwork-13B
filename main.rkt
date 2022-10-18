#lang racket
(require "utility.rkt")
(require "parser.rkt")
(require "runner.rkt")

(define env '((a 1) (b 2) (c 5)))
;(resolve env 'a)

;(define sample-code '(call (function () (ask (bool != a b) (math - a b) (math + a b))) (a)))
;(define sample-code '(call (function (x y z) (math + (math + x y) z)) (2 a (math + 1 1))))
;(display (neo-parser sample-code))
;(define parsed-neo-code (neo-parser sample-code))
;(run-neo-parsed-code parsed-neo-code env)

;(define sample-code '(call (function () (ask (bool != a b) (math - a b) (math + a b))) (a)))
 ;(display (neo-parser sample-code))
 ;(define parsed-neo-code (neo-parser sample-code))
 ;(run-neo-parsed-code parsed-neo-code env)


 ;(let* ((alex 21) (bushi 22) (blade 35) (amy 7) (substract (lambda(a b)(- a b))) (amy 5)) (substract alex amy))
 ;(run-bool-parsed-code 'a env)
 ;(elementAt '(!= (var-exp a) (var-exp b)) 1)
 (define parsed-neo-code (neo-parser '(call (function(x) (local-vars ((a 3) (b 7) (c 3)) (math + a b))) (5))))

 (run-neo-parsed-code parsed-neo-code env)

                                           