# $NetBSD: Makefile,v 1.2 2017/06/05 14:22:20 ryoon Exp $

DISTNAME=	Convert-Bencode-1.03
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	converters perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Convert/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Convert-Bencode/
COMMENT=	Functions for converting to/from bencoded strings
LICENSE=	${PERL5_LICENSE}

### DEPENDS+=	p5-List-UtilsBy-[0-9]*:../../devel/p5-List-UtilsBy
### DEPENDS+=	p5-Module-Pluggable-[0-9]*:../../devel/p5-Module-Pluggable

### USE_LANGUAGES=		# empty
### PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=		auto/Convert/Bencode/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
