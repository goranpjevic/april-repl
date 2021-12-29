;;;; april-repl.lisp

(in-package #:april-repl)

(defun main (*posix-argv*)
  (loop
    (princ "> ")
    (finish-output)
    (let ((str (read-line)))
      (cond ((string-equal str ")exit") (return))
	    ; load apl file when user inputs ')load'
            ((string-equal str ")load")
	     (progn
	       (format t "load apl file: ")
	       (finish-output)
	       (eval '(april:april-load (pathname (read-line))))))
            (t (april:april-f str))))
  (terpri)))
