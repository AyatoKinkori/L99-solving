(define pack
  (lambda (lis)
    (if (null? lis) '()
      (cons (eq_lis (car lis) (cdr lis)) (pack (break_eq (car lis) (cdr lis)))))))

(define break_eq
  (lambda (a lis)
    (if (null? lis) '()
      (if (eq? a (car lis))
        (break_eq a (cdr lis))
        lis))))

(define eq_lis
  (lambda (a lis)
    (if (null? lis) (cons a '())
      (if (eq? a (car lis)) (cons a (eq_lis (car lis) (cdr lis)))
        (cons a '())))))
