(define (over-or-under num1 num2) (cond ((< num1 num2) -1)
  ((= num1 num2) 0)
  ((> num1 num2) 1)))

(define (make-adder num) (lambda (inc) (+ num inc)))

(define (composed f g) (lambda (x) (f (g x))))

(define (repeat f n) (if (= n 1)
  (lambda (x) (f x))
  (let ((y (repeat f (- n 1))))
    (lambda (x) (f (y x))))))

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) (let ((max_num (max a b))
(min_num (min a b)))
  (if (= (modulo max_num min_num) 0)
  min_num
  (gcd min_num (modulo max_num min_num)))))
