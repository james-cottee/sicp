#lang racket
(define (new-cons a b)
  (* (expt 2 a)
     (expt 3 b)))
(define (new-car z)
  (if (> (remainder z 2) 0)
      0
      (+ 1 (new-car (/ z 2)))))
(define (new-cdr z)
  (if (> (remainder z 3) 0)
      0
      (+ 1 (new-cdr (/ z 3)))))