# $NetBSD: Makefile,v 1.11 2012/10/23 17:18:22 asau Exp $
#

DISTNAME=	giFT-FastTrack-0.8.9
PKGREVISION=	1
PKGNAME=	${DISTNAME:S/giFT-FastTrack/gift-fasttrack/}
CATEGORIES=	net
MASTER_SITES=	http://download.berlios.de/gift-fasttrack/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gift-fasttrack.berlios.de/
COMMENT=	Fasttrack plugin for giFT

WRKSRC=			${WRKDIR}/${DISTNAME}
USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
GNU_CONFIGURE=		yes

.include "../../net/gift/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
