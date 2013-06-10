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






(define encode
  (lambda (lis)
    (let ((packed_list (pack lis)))
      (letrec ((count (lambda (lis)
            (if (null? lis) 0
              (+ 1 (count (cdr lis))))))
               (only (lambda (lis)
                       (if (null? lis) #f
                         (if (null? (cdr lis)) (car lis)
                           (only (cdr lis))))))
               (enc (lambda (packed_lis)
                      (if (null? packed_lis) '()
                        (cons (cons (count (car packed_lis)) (cons (only (car packed_lis)) (quote ())))
                              (enc (cdr packed_lis))))))
               )
        (enc packed_list)))))

