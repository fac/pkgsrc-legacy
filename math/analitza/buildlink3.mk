# $NetBSD: buildlink3.mk,v 1.15 2014/01/01 11:52:05 wiz Exp $

BUILDLINK_TREE+=	analitza

.if !defined(ANALITZA_BUILDLINK3_MK)
ANALITZA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.analitza+=	analitza>=4.8.0
BUILDLINK_ABI_DEPENDS.analitza?=	analitza>=4.11.3nb1
BUILDLINK_PKGSRCDIR.analitza?=	../../math/analitza

.include "../../x11/kdelibs4/buildlink3.mk"
.endif	# ANALITZA_BUILDLINK3_MK

BUILDLINK_TREE+=	-analitza
