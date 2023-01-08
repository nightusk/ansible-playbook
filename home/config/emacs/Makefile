all: init.el init.elc

%.el: %.org
	emacs --batch --quick --load ob-tangle \
		--eval '(org-babel-tangle-file "$<")'

%.elc: %.el
	emacs --batch --quick --load init.el --funcall batch-byte-compile $<

.PHONY: all
