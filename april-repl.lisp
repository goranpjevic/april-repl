;;;; april-repl.lisp

(in-package #:april-repl)

(loop
  (format t "~%> ")
  (let ((str (read-line)))
    (if (string-equal str "exit")
      (return))
    (april:april-f str))
  (finish-output))
