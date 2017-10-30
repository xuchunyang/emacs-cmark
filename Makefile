EMACS_ROOT	= $(HOME)/src/emacs/
EMACS_SRC	= $(EMACS_ROOT)/src/
EMACS		= $(EMACS_ROOT)/src/emacs

cmark-module.so: cmark-module.o
	$(CC) -shared -lcmark $< -o $@

cmark-module.o: cmark-module.c
	$(CC) -std=c99 -Wall -I$(EMACS_SRC) -c $< -o $@

test:
	$(EMACS) --batch -Q -L . -l cmark --eval '(princ (cmark-markdown-to-html "# Hello"))'

clean:
	rm -f cmark-module.o
	rm -f cmark-module.so
