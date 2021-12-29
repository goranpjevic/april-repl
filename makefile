run:
	sbcl --noinform --load $(HOME)/.sbclrc --eval "(ql:quickload :april-repl)" --eval "(april-repl:main ())" --eval "(quit)"

build:
	buildapp --load ~/.sbclrc --eval "(ql:quickload :april-repl)" --entry april-repl:main --output build/april-repl
