# $NetBSD: Makefile,v 1.19 2014/10/12 13:07:11 bsiegert Exp $

DISTNAME=	xz-5.0.7
PKGREVISION=	1
CATEGORIES=	archivers
MASTER_SITES=	http://tukaani.org/xz/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://tukaani.org/xz/
COMMENT=	XZ utilities
LICENSE=	public-domain AND gnu-gpl-v2

.include "../../mk/bsd.prefs.mk"
.include "options.mk"

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
PKGCONFIG_OVERRIDE=	src/liblzma/liblzma.pc.in

GCC_REQD+=		3.0

CONFLICTS=	lzma-[0-9]* lzma-utils-[0-9]* lzmalib-[0-9]*

.include "../../mk/compiler.mk"

.if !empty(PKGSRC_COMPILER:Msunpro)
CONFIGURE_ARGS+=	--disable-assembler
.endif

.if ${OPSYS} == "SunOS"
CONFIGURE_ENV+=		ac_cv_have_decl_optreset=no
CONFIGURE_ENV+=		gl_cv_cc_visibility=no
.endif

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
