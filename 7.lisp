(defun myappend(L1 L2) (COND ((null L1) L2) 
(T (cons (car L1) (myappend (cdr L1) L2) ) ) ) ) 

(DEFUN BUBLESORT (LST) 
(COND ((NULL LST) 
(NIL) ) 
((NULL (CDR LST) ) 
(CONS (CAR LST) NIL) ) 
( (> (CAR LST) (CADR LST)) 
(CONS (CADR LST)(BUBLESORT (CONS (CAR LST) (CDDR LST) ) ) ) ) 
(T (CONS (CAR LST) (BUBLESORT (CDR LST) ) ))) ) 

(DEFUN SORT1(LST &OPTIONAL(N 0) ) (COND ((< N (LENGTH LST)) (SORT1 (BUBLESORT LST ) (+ N 1) ) ) (T LST) ) ) 


(DEFUN MERGE1(L1 L2) (SORT1 (MYAPPEND L1 L2 ))) 

(PRINT (MERGE1 '(1 3 5) '(2 4) ) )