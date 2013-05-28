(define my-last
    (lambda (lis)
        (if (null? lis) #f
            (if (null? (cdr lis))
                (car lis)
            (my-last (cdr lis))))))