#lang racket
(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things) 
              (cons (square (car things))
                    answer))))
  (iter items nil))
(define nil '())
(define (square x)
  (* x x))
(square-list '(1 2 3 4 5))
;cons latest square to answer gives reverse list
;in second version should be append not cons, as answer is a list