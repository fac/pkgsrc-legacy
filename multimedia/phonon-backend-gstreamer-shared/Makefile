# $NetBSD: Makefile,v 1.2 2016/04/26 09:04:23 markd Exp $

DISTNAME=	phonon-backend-gstreamer-4.9.0
PKGNAME=	${DISTNAME:S/-4/-shared-4/}

COMMENT=	Multimedia API for KF5 - GStreamer backend shared files

.include "../../multimedia/phonon-backend-gstreamer/Makefile.common"

do-configure:

do-build:

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKSRC}/gstreamer/icons/hisc-apps-phonon-gstreamer.svgz \
		 ${DESTDIR}${PREFIX}/share/icons/hicolor/scalable/apps/phonon-gstreamer.svgz
.for i in 128 64 48 22 16 
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/icons/hicolor/${i}x${i}/apps
	${INSTALL_DATA} ${WRKSRC}/gstreamer/icons/hi${i}-apps-phonon-gstreamer.png \
		 ${DESTDIR}${PREFIX}/share/icons/hicolor/${i}x${i}/apps/phonon-gstreamer.png
.endfor

.include "../../mk/bsd.pkg.mk"
