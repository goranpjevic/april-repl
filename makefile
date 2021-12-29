run:
	sbcl --noinform --load $(HOME)/.sbclrc --eval "(ql:quickload :april-repl)" --eval "(quit)"
