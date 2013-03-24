#lang racket
(define (ncons x y)
  (lambda (m) (m x y)))

(define (ncar z)
  (z (lambda (p q) p)))

(define (ncdr z)
  (z (lambda (p q) q)))