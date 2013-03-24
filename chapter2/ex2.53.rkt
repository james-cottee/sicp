#lang racket
(define (jeq? a b)
  (cond ((and (null? a)
              (null? b)) #t)
        ((or (null? a)
             (null? b)) #f)
        ((and (atom? a)
             (atom? b)) (eq? a b))
        ((or (atom? a) (atom? b)) #f)
        (else (and (jeq? (car a) (car b))
                   (jeq? (cdr a) (cdr b))))))
         
         
(define (atom? x)
  (if (null? x)
      #f
      (not (pair? x))))
              
