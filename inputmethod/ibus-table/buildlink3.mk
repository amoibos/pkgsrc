# $NetBSD: buildlink3.mk,v 1.2 2014/08/28 09:35:56 obache Exp $

BUILDLINK_TREE+=	ibus-table

.if !defined(IBUS_TABLE_BUILDLINK3_MK)
IBUS_TABLE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ibus-table+=	ibus-table>=1.2.0.20100111
BUILDLINK_ABI_DEPENDS.ibus-table+=	ibus-table>=1.8.0
BUILDLINK_PKGSRCDIR.ibus-table?=	../../inputmethod/ibus-table

.endif	# IBUS_TABLE_BUILDLINK3_MK

BUILDLINK_TREE+=	-ibus-table
