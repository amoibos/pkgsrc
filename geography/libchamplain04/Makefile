# $NetBSD: Makefile,v 1.33 2014/10/07 16:47:11 adam Exp $
#

DISTNAME=	libchamplain-0.4.7
PKGNAME=	libchamplain04-0.4.7
PKGREVISION=	24
CATEGORIES=	geography
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libchamplain/0.4/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://projects.gnome.org/libchamplain/
COMMENT=	Map widget
#LICENSE=	# TODO: (see mk/license.mk)

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gmake

PKGCONFIG_OVERRIDE+=	champlain-gtk.pc.in
PKGCONFIG_OVERRIDE+=	champlain.pc.in

.include "../../devel/glib2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../graphics/clutter-gtk0.10/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../net/libsoup24/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
