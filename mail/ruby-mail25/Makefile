# $NetBSD: Makefile,v 1.2 2017/06/10 15:57:04 taca Exp $

DISTNAME=	mail-2.5.5
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME:S/mail/mail25/}
CATEGORIES=	mail

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://github.com/mikel/mail
COMMENT=	Mail provides a nice Ruby DSL for making, sending and reading emails
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-mime-types1>=1.16<2:../../mail/ruby-mime-types1
DEPENDS+=	${RUBY_PKGPREFIX}-treetop>=1.4.8<1.5:../../textproc/ruby-treetop

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
