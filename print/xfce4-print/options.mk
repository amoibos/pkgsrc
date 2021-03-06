# $NetBSD: options.mk,v 1.7 2014/06/18 09:26:11 wiz Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.xfce4-print

PKG_OPTIONS_NONEMPTY_SETS+=		printing-system
PKG_OPTIONS_SET.printing-system=	bsdlpr cups

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "SunOS" || ${OPSYS} == "Linux"
PKG_SUGGESTED_OPTIONS+=	cups
.else
PKG_SUGGESTED_OPTIONS+=	bsdlpr
.endif

.include "../../mk/bsd.options.mk"

PLIST_VARS+=    bsdlpr
.if !empty(PKG_OPTIONS:Mbsdlpr)
PLIST.bsdlpr=   yes
.else
CONFIGURE_ARGS+=        --disable-bsdlpr
.endif

PLIST_VARS+=		cups
.if !empty(PKG_OPTIONS:Mcups)
.include "../../print/cups15/buildlink3.mk"
PLIST.cups=		yes
.else
CONFIGURE_ARGS+=	--disable-cups
.endif
