# $NetBSD: Makefile,v 1.5 2014/12/04 18:52:56 rodent Exp $

PKGNAME=	suse_qt4-${SUSE_VERSION}
PKGREVISION=	3
CATEGORIES=	emulators
RPMUPDPKGS+=	libqt4-4.8.5-5.13.1.${SUSE_ARCH}
RPMUPDPKGS+=	libqt4-qt3support-4.8.5-5.13.1.${SUSE_ARCH}
RPMUPDPKGS+=	libqt4-x11-4.8.5-5.13.1.${SUSE_ARCH}
RPMUPDPKGS+=	libQtWebKit4-4.8.5+2.3.3-2.6.1.${SUSE_ARCH}

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Linux compatibility package for Qt4

EMUL_MODULES.linux=	x11 fontconfig png

PLIST_SRC=		${PKGDIR}/PLIST ${RPM2PKG_PLIST}

.include "../../emulators/suse131_linux/Makefile.common"
.include "../../mk/bsd.pkg.mk"
