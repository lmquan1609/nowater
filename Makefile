.PHONY= all install uninstall

PREFIX = /usr/local

pkgname = nowater

all:
	@echo "Visit https://github.com/justanoobcoder/nowater for more details."

install:
	@cp -f ${pkgname} ${DESTDIR}${PREFIX}/bin/
	@install -Dm644 images/* -t ${DESTDIR}${PREFIX}/share/${pkgname}/images
	@install -Dm644 LICENSE ${DESTDIR}/usr/share/licenses/${pkgname}/LICENSE

uninstall:
	@rm -f ${DESTDIR}${PREFIX}/bin/${pkgname}
	@rm -rf ${DESTDIR}${PREFIX}/share/${pkgname}
	@rm -rf ${DESTDIR}/usr/share/licenses/${pkgname}
