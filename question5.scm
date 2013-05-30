(define reverse
	(lambda (lis revlis)
		(if (null? lis)
			revlis
		(reverse (cdr lis) (cons (car lis) revlis)))))
