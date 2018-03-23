;gnu clisp 2.49

(DEFUN ASSOC1 (X Y)
       (COND ((CAR X) (COND ((EQ (CAR (CAR X)) Y) (CDR (CAR X)))
                            (T (ASSOC1 (CDR X) Y))))
       (T NIL)))
(PRINT (ASSOC1 '((A . 1) (B . 2) (C . 3)) 'D))