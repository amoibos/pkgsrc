# $NetBSD: Makefile,v 1.6 2014/10/19 22:27:47 alnsn Exp $

DISTNAME=	slnunicode-1.1apl1
PKGNAME=	${LUA_PKGPREFIX}-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_LOCAL}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/phi-gamma/slnunicode/
COMMENT=	Unicode library for Lua

BUILD_TARGET=	unicode.so
LUA_VERSIONS_INCOMPATIBLE=	51

MAKE_ENV+=	LUA_EXECUTABLE=${LUA_INTERPRETER}

INSTALLATION_DIRS=	${LUA_CDIR}

do-install:
	${INSTALL_LIB} ${WRKSRC}/unicode.so ${DESTDIR}${PREFIX}/${LUA_CDIR}

.include "../../lang/lua/module.mk"
.include "../../mk/bsd.pkg.mk"
