;;;; april-repl.lisp

(in-package #:april-repl)

(defun main (*posix-argv*)
  (loop
    (format t "~%> ")
    (let ((str (read-line)))
      (if (string-equal str "exit")
	(return))
      (april:april-f str))))
