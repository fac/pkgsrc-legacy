# $NetBSD: Makefile,v 1.21 2015/12/12 17:56:55 taca Exp $

DISTNAME=	uconv-0.6.1
CATEGORIES=	converters japanese ruby
MASTER_SITES=	http://www.yoshidam.net/

MAINTAINER=	taca@NetBSD.org
HOMEPAGE=	http://www.yoshidam.net/Ruby.html#uconv
COMMENT=	Unicode conversion library with Japanese codesets support
LICENSE=	gnu-gpl-v2 OR ruby-license

USE_RUBY_EXTCONF=	yes
WRKSRC=			${WRKDIR}/uconv

INSTALLATION_DIRS=	${RUBY_DOC}/uconv
INSTALL_TARGET=		site-install

DOCS=			README README.ja

post-install:
.for f in ${DOCS}
	cd ${WRKSRC}; ${INSTALL_DATA} ${f} ${DESTDIR}${PREFIX}/${RUBY_DOC}/uconv
.endfor

.include "../../lang/ruby/modules.mk"
.include "../../mk/bsd.pkg.mk"
