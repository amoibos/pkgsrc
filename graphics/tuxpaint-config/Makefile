# $NetBSD: Makefile,v 1.19 2014/08/24 15:30:43 wiz Exp $

DISTNAME=		tuxpaint-config-0.0.13
PKGREVISION=		1
CATEGORIES=		graphics
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.tuxpaint.org/
COMMENT=		Configuration program for tuxpaint
LICENSE=		gnu-gpl-v2

USE_LANGUAGES=		c++
USE_TOOLS+=		gmake msgfmt

INSTALL_MAKE_FLAGS+=	PREFIX=${DESTDIR}${PREFIX}
INSTALL_MAKE_FLAGS+=	MAN_PREFIX=${DESTDIR}${PREFIX}/${PKGMANDIR}
MAKE_FLAGS+=		ARCH_LINKS=-lintl
INSTALLATION_DIRS+=	bin ${PKGMANDIR}/man1

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../print/libpaper/buildlink3.mk"
.include "../../x11/fltk13/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
