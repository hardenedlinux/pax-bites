PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin
DESTDIR ?=

all:
install: pax-bites.sh
	mkdir -p $(DESTDIR)$(BINDIR)
	install -o root -g root -m 755 pax-bites.sh $(DESTDIR)$(BINDIR)/pax-bites

.PHONY: all install
