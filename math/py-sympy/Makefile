# $NetBSD: Makefile,v 1.18 2016/08/28 15:48:33 wiz Exp $

DISTNAME=	sympy-1.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_GITHUB:=sympy/}
GITHUB_RELEASE=	${DISTNAME}
GITHUB_PROJECT=	sympy

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.sympy.org/
COMMENT=	Python library for symbolic mathematics
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-mpmath>=0.19:../../math/py-mpmath

USE_LANGUAGES=	# none

REPLACE_PYTHON+=	sympy/utilities/tests/diagnose_imports.py

SUBST_CLASSES+=		manpath
SUBST_SED.manpath=	-e 's,share/man,${PKGMANDIR},'
SUBST_FILES.manpath+=	setup.py
SUBST_STAGE.manpath=	pre-configure
SUBST_MESSAGE.manpath=	Fix man page installation path.

# advanced.pidigits is broken, don't worry if it fails
do-test:
	(cd ${WRKSRC}/examples && ${PYTHONBIN} all.py)

post-install:
	cd ${DESTDIR}${PREFIX} && \
		mv bin/isympy bin/isympy${PYVERSSUFFIX} && \
		mv ${PKGMANDIR}/man1/isympy.1 \
			${PKGMANDIR}/man1/isympy${PYVERSSUFFIX}.1

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
