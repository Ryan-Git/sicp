(define (cont-frac n d k)
  (define (iter i)
    (if (= i k)
        (/ (n k) (d k))
        (/ (n i) 
	       (+ (d i)
	       	  (iter (+ i 1))
	       )
	    )
    )
  )

  (iter 1)
)