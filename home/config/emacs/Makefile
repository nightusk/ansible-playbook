all: init.el init.elc

%.el: %.org
	emacs --batch --quick --load org --eval '(org-babel-load-file "$<")'

%.elc: %.el
	emacs --batch --quick --funcall batch-byte-compile $<

.PHONY: all
