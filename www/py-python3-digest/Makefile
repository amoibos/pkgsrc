# $NetBSD: Makefile,v 1.2 2014/06/07 14:26:24 wiz Exp $

DISTNAME=	python3-digest-1.8b4
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/python3/python/}
CATEGORIES=	python www
MASTER_SITES=	https://pypi.python.org/packages/source/p/python3-digest/

MAINTAINER=	rodent@NetBSD.org
HOMEPAGE=	http://bitbucket.org/akoha/python-digest/
COMMENT=	Python library to aid in implementing HTTP Digest Authentication
LICENSE=	modified-bsd

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCOMPATIBLE=	26 27
EGG_NAME=			${DISTNAME:S/-/_/1}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
