# $NetBSD: Makefile,v 1.8 2014/12/05 17:07:49 rodent Exp $

DISTNAME=	logilab-common-0.63.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	https://pypi.python.org/packages/source/l/logilab-common/

MAINTAINER=	kamel.derouiche@gmail.com
HOMEPAGE=	http://www.logilab.org/project/logilab-common
COMMENT=	Useful miscellaneous modules used by Logilab projects
LICENSE=	gnu-lgpl-v2.1

DEPENDS+=	${PYPKGPREFIX}-six>=1.4.0:../../lang/py-six

.include "../../mk/bsd.fast.prefs.mk"

.if ${OPSYS} == "Cygwin" || ${OPSYS} == "Interix"
DEPENDS+=	${PYPKGPREFIX}-colorama-[0-9]*:../../comms/py-colorama
.endif

PLIST_SUBST+=			PYVERSSUFFIX=${PYVERSSUFFIX}
PYTHON_VERSIONS_INCOMPATIBLE=	33 34 # py-mxDateTime

EGG_NAME=		${DISTNAME:S/-/_/1}
INSTALLATION_DIRS=	${PKGMANDIR}/man1

post-extract:
	${MV} ${WRKSRC}/bin/pytest ${WRKSRC}/bin/pytest${PYVERSSUFFIX}

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/pytest.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/pytest${PYVERSSUFFIX}.1

.include "../../lang/python/egg.mk"
.include "../../time/py-mxDateTime/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
