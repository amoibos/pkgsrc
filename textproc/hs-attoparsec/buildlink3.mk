# $NetBSD: buildlink3.mk,v 1.4 2014/12/12 22:55:25 szptvlfn Exp $

BUILDLINK_TREE+=	hs-attoparsec

.if !defined(HS_ATTOPARSEC_BUILDLINK3_MK)
HS_ATTOPARSEC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-attoparsec+=	hs-attoparsec>=0.12.1
BUILDLINK_ABI_DEPENDS.hs-attoparsec+=	hs-attoparsec>=0.12.1.2nb3
BUILDLINK_PKGSRCDIR.hs-attoparsec?=	../../textproc/hs-attoparsec

.include "../../math/hs-scientific/buildlink3.mk"
.include "../../devel/hs-text/buildlink3.mk"
.endif	# HS_ATTOPARSEC_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-attoparsec
