#lang racket
(define (enumerate-interval low high)
  (if (> low high)
      null
      (cons low (enumerate-interval (+ low 1) high))))
(provide enumerate-interval)
(define (enumerate-tree tree)
  (cond ((null? tree) null)
        ((not (pair? tree)) (list tree))
        (else (append (enumerate-tree (car tree))
                      (enumerate-tree (cdr tree))))))
(provide enumerate-tree)