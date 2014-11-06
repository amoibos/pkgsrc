# $NetBSD: buildlink3.mk,v 1.1 2014/11/06 11:29:15 jaapb Exp $

BUILDLINK_TREE+=	ocaml-uutf

.if !defined(OCAML_UUTF_BUILDLINK3_MK)
OCAML_UUTF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-uutf+=	ocaml-uutf>=0.9.3
BUILDLINK_PKGSRCDIR.ocaml-uutf?=	../../textproc/ocaml-uutf
.endif	# OCAML_UUTF_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-uutf
