# $NetBSD: Makefile,v 1.24 2017/06/05 14:24:24 ryoon Exp $
#

DISTNAME=	SNMP-Info-3.33
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=SNMP/}

MAINTAINER=	bouyer@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/SNMP-Info/
#HOMEPAGE=	http://snmp-info.sourceforge.net/
COMMENT=	Perl5 object oriented interface to SNMP informations
LICENSE=	modified-bsd

DEPENDS+=	net-snmp>=5.1.2:../../net/net-snmp

PERL5_PACKLIST=		auto/SNMP/Info/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
