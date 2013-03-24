#lang racket
(define (cont-iter n d k)
  (define (helper result i)
    (if (= i 0)
        result
        (helper (/ (n i) (+ (d i) result)) (- i 1))))
    (helper (/ (n k) (d k)) (- k 1)))

(define (n j) 1.0)
(define (d j) 1.0)