(declare-const a Int)
(declare-const b Int)
(declare-const c Int)

(declare-const LENGTH Int)
(declare-const PRIZE Int)

(declare-const position_0 Int)
(declare-const position_1 Int)
(declare-const position_2 Int)

(assert (= position_0 0))

(assert (= a 1))
(assert not((= b 1)))
(assert (= c 1))

(assert (= position_1 (mod (+ position_0 (- LENGTH 2)) LENGTH)))

(assert (= position_0 (mod (+ position_1 1) LENGTH)))

(assert (= position_2 (mod (+ position_0 (- LENGTH 2)) LENGTH)))

(assert (not (= position_2 PRIZE)))

(check-sat)
(get-model)

