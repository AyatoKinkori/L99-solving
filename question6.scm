(define is_palindrome
  (lambda (lis)
    (if (null? lis) #f
      (ls_eq (reverse lis '()) lis))))

(define ls_eq
  (lambda (lis lis2)
    (if (and (null? lis) (null? lis2)) #t
      (if (or (null? lis) (null? lis2)) #f
        (if (eq? (car lis) (car lis2))
          (ls_eq (cdr lis) (cdr lis2))
          #f)))))
