(define length
  (lambda (lis)
    (if (null? lis) 0
      (+ 1 (length (cdr lis))))))
