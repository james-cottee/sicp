#lang racket
(require "accumulate.rkt")
(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter initial sequence))
(define fold-right accumulate)
;;commutative op => fold-left & fold-right produce same results
(provide fold-right)
(provide fold-left)