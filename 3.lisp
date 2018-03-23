;gnu clisp 2.49

(DEFUN APPEND1 (X Y)
       (COND ((CDR X) (CONS (CAR X) (APPEND1 (CDR X) Y)))
             (T (CONS (CAR X) Y))))
(PRINT (APPEND1 '(A B C) '(D E F)))