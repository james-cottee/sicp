#lang racket
(define (cont-frac n d k)
  (define (helper i k)
    (if (< i k)
        (/ (n i) (+ (d i) (helper (+ i 1) k)))
        (/ (n i) (/ k i))))
  (helper 1 k))
(define (n j) 1.0)
(define (d j) 1.0)