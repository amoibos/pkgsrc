# $NetBSD: Makefile,v 1.29 2014/10/09 14:06:48 wiz Exp $
#

DISTNAME=	pload-0.9.5
PKGREVISION=	3
CATEGORIES=	net x11
MASTER_SITES=	${MASTER_SITE_SUNSITE:=system/network/serial/ppp/}

MAINTAINER=	shattered@NetBSD.org
HOMEPAGE=	http://web.archive.org/web/20050305142516/http://www.engr.utk.edu/~mdsmith/pload/
COMMENT=	Network interface monitor for X11, monitoring totals and in/out rates
LICENSE=	gnu-gpl-v2

NOT_FOR_PLATFORM=	Darwin-*-*
NOT_FOR_BULK_PLATFORM=	HPUX-*-*

HAS_CONFIGURE=	YES
USE_TOOLS+=	imake
USE_X11BASE=	YES
INSTALL_TARGET=	install install.man

.include "../../x11/libXaw/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
