# $NetBSD: Makefile,v 1.21 2017/04/22 21:03:14 adam Exp $
#

DISTNAME=	grilo-0.2.7
PKGREVISION=	8
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.gnome.org/pub/gnome/sources/grilo/0.2/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnome.org/
COMMENT=	Media browser framework
LICENSE=	gnu-lgpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config intltool msgfmt
USE_LANGUAGES=	c99
SET_LIBDIR=	yes

PKGCONFIG_OVERRIDE+=	grilo-0.2.pc.in
PKGCONFIG_OVERRIDE+=	grilo-net-0.2.pc.in

.include "../../devel/glib2/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../net/libsoup/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
