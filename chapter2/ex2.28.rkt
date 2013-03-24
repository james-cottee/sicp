#lang racket
(define (fringe l)
  (cond ((null? l) null)
        ((not (pair? l)) (list l))
        (else (append (fringe (cdr l))
                      (fringe (car l))))))