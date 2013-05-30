(define compress
  (lambda (lis)
    (if (null? lis) '()
      (pick-lined (car lis) (cdr lis)))))

(define pick-lined
  (lambda (a lis)
    (if (null? lis) (cons a '())
      (if (eq? a (car lis))
        (pick-lined (car lis) (cdr lis))
        (cons a (pick-lined (car lis) (cdr lis)))))))
