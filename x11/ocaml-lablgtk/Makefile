# $NetBSD: Makefile,v 1.2 2014/11/20 16:11:16 wiz Exp $

DISTNAME=	lablgtk-2.18.3
CATEGORIES=	x11
MASTER_SITES=	http://forge.ocamlcore.org/frs/download.php/1456/

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	http://lablgtk.forge.ocamlcore.org/
COMMENT=	GTK+ 2.x bindings for Objective Caml
# for installed files; more restrictions on applications/
LICENSE=	gnu-lgpl-v2

GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake pkg-config
OCAML_USE_FINDLIB=	yes

# seems to have been forgotten in 2.18.3 release
WRKSRC=		${WRKDIR}/lablgtk-2.18.2

MAKE_JOBS_SAFE=		no
BUILD_TARGET=		world

BUILDLINK_DEPMETHOD.ocaml=	full

CONFLICTS=	lablgtk-[0-9]*
SUPERSEDES=	lablgtk-[0-9]*

.include "../../mk/bsd.prefs.mk"

# Stub libraries for functions missing from base system.
PLIST_VARS+=	stubs opt

.if ${OPSYS} == "Darwin" || ${OPSYS} == "DragonFly" || \
    ${OPSYS} == "NetBSD" || ${OPSYS} == "FreeBSD" || \
    ${OPSYS} == "SunOS"  || ${OPSYS} == "Linux"
PLIST.stubs=	yes
.endif

.include "../../mk/ocaml.mk"

.if ${OCAML_USE_OPT_COMPILER} == "yes"
PLIST.opt=      yes
.endif

.include "options.mk"

.include "../../lang/camlp4/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
