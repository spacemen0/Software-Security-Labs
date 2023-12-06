(declare-const a Int)
(declare-const c Int)
(declare-const d Int)

(declare-fun g (Int) Int)

(declare-fun f (Int) Int)

(assert (= (g a) c))

(assert (or (not (= (f (g a)) (f c)))
	    (= (g a) d)
	)
)

; (assert (not (= c d)))


(check-sat)
(get-model)