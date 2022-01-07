;;;; april-repl.asd

(asdf:defsystem #:april-repl
 :serial t
 :depends-on (#:april)
 :components ((:file "package")
              (:file "april-repl")))
