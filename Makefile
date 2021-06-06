.PHONY= all install uninstall

PREFIX = /usr/local

all:
	@echo "Run 'sudo make install' to install nowall."

install:
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@install -m 755 nowall ${DESTDIR}${PREFIX}/bin/nowall

uninstall:
	@rm -f ${DESTDIR}${PREFIX}/bin/nowall
