PROGNM = puma
PREFIX ?= /usr/local
SHRDIR ?= $(DESTDIR)$(PREFIX)/share
BINDIR ?= $(DESTDIR)$(PREFIX)/bin

.PHONY: install

install:
	@install -Dm755 bin/*	       -t $(BINDIR)
	@install -Dm644 cmp/zsh/*      -t $(SHRDIR)/zsh/site-functions
	@install -Dm644 man1/*	       -t $(SHRDIR)/man/man1
	@install -Dm644 man7/*	       -t $(SHRDIR)/man/man7
	@install -Dm644 LICENSE	       -t $(SHRDIR)/licenses/$(PROGNM)
	#@install -Dm644 THANKS README  -t $(SHRDIR)/doc/$(PROGNM)

man1/%.1: man1/%.1.md
	pandoc -s -t man $< > $@

man7/%.7: man7/%.7.md
	pandoc -s -t man $< > $@
