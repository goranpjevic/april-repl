;;;; april-repl.lisp

(in-package #:april-repl)

(defun main (*posix-argv*)
  (loop
    (princ "> ")
    (finish-output)
    (let ((str (read-line)))
      (if (string-equal str "exit")
	(return))
      (april:april-f str))
    (terpri)))
