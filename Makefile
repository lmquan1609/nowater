.PHONY= all install uninstall

PREFIX ?= /usr/local
DATADIR ?= ${PREFIX}/share
LICENSEDIR = /usr/share/licenses

pkgname = nowater

all:
	@echo "Visit https://github.com/justanoobcoder/nowater for more details."

install:
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@mkdir -p ${DESTDIR}${LICENSEDIR}/${pkgname}
	@mkdir -p ${DESTDIR}${DATADIR}/${pkgname}/images
	@install -m 755 ${pkgname} ${DESTDIR}${PREFIX}/bin/${pkgname}
	@install -Dm644 LICENSE ${DESTDIR}${LICENSEDIR}/${pkgname}/LICENSE
	@install -Dm644 images/* ${DESTDIR}${DATADIR}/${pkgname}/images

uninstall:
	@rm -f ${DESTDIR}${PREFIX}/bin/${pkgname}
	@rm -rf ${DESTDIR}${DATADIR}/${pkgname}
	@rm -rf ${DESTDIR}${LICENSEDIR}/${pkgname}
