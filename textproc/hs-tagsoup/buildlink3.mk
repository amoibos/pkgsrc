# $NetBSD: buildlink3.mk,v 1.2 2014/08/29 14:08:41 szptvlfn Exp $

BUILDLINK_TREE+=	hs-tagsoup

.if !defined(HS_TAGSOUP_BUILDLINK3_MK)
HS_TAGSOUP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-tagsoup+=	hs-tagsoup>=0.13.1
BUILDLINK_ABI_DEPENDS.hs-tagsoup+=	hs-tagsoup>=0.13.1
BUILDLINK_PKGSRCDIR.hs-tagsoup?=	../../textproc/hs-tagsoup

.include "../../devel/hs-text/buildlink3.mk"
.endif	# HS_TAGSOUP_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-tagsoup
