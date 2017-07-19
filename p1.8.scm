(define (q-iter guess x)
  (if (good-enough? guess x)
      guess
      (q-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x guess guess) (* 2 guess)) 3))

(define (good-enough? guess x)
  (< (/ (abs (- (improve guess x) guess)) x) 0.001))

(define (q x)
  (q-iter 1.0 x))