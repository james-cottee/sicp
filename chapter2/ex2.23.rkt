#lang racket
(define (for-each f things)
  (cond ((null? things) #t)
        (else (f (car things))
              (for-each f (cdr things)))))
  