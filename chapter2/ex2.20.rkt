#lang racket
(define (same-parity l)
  (define (helper l first)
    (cond ((null? l) '())
          ((= (remainder (car l) 2)
              (remainder first 2))
           (cons (car l) (helper (cdr l) first)))
          (else (helper (cdr l) first))))
  (if (null? l)
      '()
  (helper l (car l))))
        
    