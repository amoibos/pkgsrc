# $NetBSD: Makefile,v 1.19 2014/12/29 04:37:44 dholland Exp $

DISTNAME=	gedit-3.14.2
PKGREVISION=	1
CATEGORIES=	editors gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gedit/${PKGVERSION_NOREV:R}/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	prlw1@cam.ac.uk
HOMEPAGE=	http://www.gedit.org/
COMMENT=	Lightweight GNOME UTF-8 text editor
LICENSE=	gnu-gpl-v2

CONFLICTS+=		gedit>=2.0<3.0
GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake intltool msgfmt perl pkg-config
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	data/gedit.pc.in
PY_PATCHPLIST=		yes
PYTHON_VERSIONS_INCOMPATIBLE=	26 27
REPLACE_PYTHON+=	plugins/externaltools/data/send-to-fpaste.tool.in

CONFIGURE_ARGS+=	--disable-updater
CONFIGURE_ARGS+=	--disable-deprecations
CONFIGURE_ARGS+=	--disable-maintainer-mode

.include "options.mk"

BUILD_DEPENDS+=	itstool-[0-9]*:../../textproc/itstool

DEPENDS+=	adwaita-icon-theme-[0-9]*:../../graphics/adwaita-icon-theme

.include "../../devel/gobject-introspection/buildlink3.mk"
BUILDLINK_API_DEPENDS.libpeas+=	libpeas>=1.7.0
.include "../../devel/libpeas/buildlink3.mk"
.include "../../devel/py-gobject3/buildlink3.mk"
BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.40.0
.include "../../devel/glib2/schemas.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
BUILDLINK_API_DEPENDS.gtk3+=	gtk3+>=3.14.0
.include "../../x11/gtk3/buildlink3.mk"
BUILDLINK_API_DEPENDS.gtksourceview3+=	gtksourceview3>=3.14.0
.include "../../x11/gtksourceview3/buildlink3.mk"
.include "../../x11/libICE/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"

.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"

.include "../../mk/bsd.pkg.mk"
