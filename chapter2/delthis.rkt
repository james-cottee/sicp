#lang racket
(require "accumulate.rkt")
(define (count-leaves t)
  (accumulate (lambda (x y) (+ y 1))
  0
  (flatten t)))
(define (flatten t)
  (cond ((null? t) null)
        ((pair? (car t)) (append (flatten (car t))
                               (flatten (cdr t))))
        (else (append (list (car t)) (flatten (cdr t))))))
(map (