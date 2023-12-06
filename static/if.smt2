(declare-const CAP Int)
(assert (= CAP 5)) 

(declare-const a0 Int)
(declare-const b0 Int)

(declare-const res0 Int)
(assert (= res0 0))

(assert (not (= (mod a0 CAP) 
	        (mod b0 (+ CAP 2)))))

(declare-const res1 Int)
(assert (= res1 (+ a0 1)))

(assert (= res1 b0))

(check-sat)
(get-model)