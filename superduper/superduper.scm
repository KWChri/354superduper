;; Scheme superduper
;; Author Kelton Christopher
;; Last update 09/22/2020
;; CS354 la1-1
;; superduper takes in an input of source and an integer. If source is a pair superduper will create a duplicate of source count times

;; Parameters: input list and integer
;; Return: list duplicated count times
(define (superduper source count) 
  ;; Parameters input list and integer
  ;; Return: copies of source
  (define (copy source hops) 
    (if (zero? hops) 
      (superduper (cdr source) count) 
      (cons (superduper (car source) count) (copy source (- hops 1))))) 
                                                                       

  (if (pair? source) 
    (cons (superduper (car source) count) (copy source (- count 1))) 
    source)) 
    
(display (superduper 123 1))
(display "\n")
(display (superduper 123 2))
(display "\n")
(display (superduper '() 1))
(display "\n")
(display (superduper '() 2))
(display "\n")
(display (superduper '(x) 1))
(display "\n")
(display (superduper '(x) 2))
(display "\n")
(display (superduper '(x y) 1))
(display "\n")
(display (superduper '(x y) 2))
(display "\n")
(display (superduper '((a b) y) 3))
(display "\n")
