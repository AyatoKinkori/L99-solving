(define reverse 
	(lambda (lis revlis)
		(if (null? lis)
			revlis
		(reverse (cdr lis) (cons (car lis) revlis)))))


(define length
  (lambda (lis)
    (if (null? lis) 0
      (+ 1 (length (cdr lis))))))

(define my_but_last
  (lambda (lis)
    (if (null? lis) #f
      (if (< (length lis) 2) #f
       (cons (car (reverse lis '())) (cons (car (cdr (reverse lis '()))) '())
        )))))
