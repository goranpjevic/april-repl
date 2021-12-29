;;;; april-repl.lisp

(in-package #:april-repl)

(loop
  (format t "~%> ")
  (let ((str (read-line)))
    (april:april-f str))
  (finish-output))
