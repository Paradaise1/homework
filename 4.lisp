;gnu clisp 2.49

(DEFUN APPEND1 (X Y)
       (COND ((CDR X) (CONS (CAR X) (APPEND1 (CDR X) Y)))
             (T (CONS (CAR X) Y))))
(DEFUN REVERSE1 (X)
       (COND ((CDR (CDR X)) (APPEND1 (REVERSE1 (CDR X)) (LIST (CAR X))))
             (T (LIST (CAR (CDR X)) (CAR X)))))
(PRINT (REVERSE1 '(A B C D)))