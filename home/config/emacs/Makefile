all: init.elc

%.elc: %.org
	emacs --batch --quick --eval "(progn (require 'org) (org-babel-load-file \"$<\"))"
	emacs --batch -f batch-byte-compile $(subst elc,el,$@)
	rm $(subst elc,el,$@)

.PHONY: all
