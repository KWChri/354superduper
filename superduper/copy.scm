;; Scheme copy program

(define (copy seq)
  (if (null? seq)
    '()
    (cons (car seq) (copy (cdr seq)))))

(display (copy '(1 4)))
(display "\n")
