# $NetBSD: Makefile,v 1.99 2017/06/14 20:26:56 wiz Exp $

DISTNAME=	mtr-0.92
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.bitwizard.nl/mtr/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.bitwizard.nl/mtr/
COMMENT=	Traceroute and ping in a single graphical network diagnostic tool
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		YES
USE_TOOLS+=		pkg-config
INSTALLATION_DIRS=	${PKGMANDIR}/man8 sbin share/doc/mtr

.include "options.mk"

SPECIAL_PERMS=	sbin/mtr ${SETUID_ROOT_PERMS}

# Remove hard-coded compiler option that GCC 3.x doesn't support.
.include "../../mk/compiler.mk"
.if !empty(CC_VERSION:Mgcc-3.*)
BUILDLINK_TRANSFORM+=	rm:-Wno-pointer-sign
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mtr ${DESTDIR}${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/mtr.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man8
	${INSTALL_DATA} ${WRKSRC}/SECURITY ${DESTDIR}${PREFIX}/share/doc/mtr

.include "../../mk/curses.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
