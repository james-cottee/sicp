#lang racket
(require "ex2.38.rkt")
(define (reverse sequence)
  (fold-right (lambda (x y) (append y (list x))) null sequence))
(define (nreverse sequence)
  (fold-left (lambda (x y) (cons y x)) null sequence))