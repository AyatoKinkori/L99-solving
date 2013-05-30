(define atom?
  (lambda (elem)
      (if (and (not (null? elem)) (not (list? elem))) #t
        #f)))

(define pickup-atom
  (lambda (lis fl_lis)
    (if (null? lis) fl_lis
      (if (atom? (car lis)) (pickup-atom (cdr lis) (cons (car lis) fl_lis))
        (pickup-atom (cdr lis) (pickup-atom (car lis) fl_lis))))))

(define my_flatten
  (lambda (lis)
  (reverse (pickup-atom lis '()) '())))
