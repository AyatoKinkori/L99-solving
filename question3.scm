(define element_at
  (lambda (lis at)
    (if (null? lis) #f
      (if (= at 0)
        (car lis)
        (element_at (cdr lis) (- at 1))))))
