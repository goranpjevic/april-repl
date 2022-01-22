;;;; april-repl.lisp

(in-package #:april-repl)

(defun main ()
  (declare (ignorable argv))
  (loop
    (princ "> ")
    (finish-output)
    (let ((str (read-line)))
      (cond ((string-equal str "") ())
            ; exit repl when user inputs ')exit'
            ((string-equal str ")exit") (return))
            ; load apl file when user inputs ')load'
            ((string-equal str ")load")
             (princ "load apl file: ")
             (finish-output)
             (eval '(april:april-load (pathname (read-line)))))
            (t (handler-case (april:april-f str)
		 (error (c) (princ "?")))
               (fresh-line))))))
