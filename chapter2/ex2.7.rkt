#lang racket
(define (deep-reverse l)
  (cond ((null? l) null)
        ((pair? (car l)) (append (deep-reverse (cdr l))
                                 (list (deep-reverse (car l)))))
        (else (append (deep-reverse (cdr l)) (list (car l))))))


(define x '(1 2 3))
(define y '(4 5 6))
