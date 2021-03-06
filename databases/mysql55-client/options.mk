# $NetBSD: options.mk,v 1.5 2014/10/17 17:07:44 fhajny Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.mysql5

# ndb-cluster does not configure with cmake
PKG_SUPPORTED_OPTIONS+=	dtrace embedded-server ndb-cluster sphinx ssl
PKG_SUGGESTED_OPTIONS+=	embedded-server ssl

.include "../../mk/bsd.options.mk"

# Enable OpenSSL support
.if !empty(PKG_OPTIONS:Mssl)
.	include "../../security/openssl/buildlink3.mk"
CMAKE_ARGS+=		-DWITH_SSL=system
.else
CMAKE_ARGS+=		-DWITH_SSL=no
.endif

# Enable DTrace support
.if !empty(PKG_OPTIONS:Mdtrace)
CMAKE_ARGS+=		-DENABLE_DTRACE=ON
.endif

# Enable Sphinx SE support
# http://sphinxsearch.com/docs/current.html#sphinxse-overview
PLIST_VARS+=	sphinx
.if !empty(PKG_OPTIONS:Msphinx)
SPHINX_VER=	2.2.5
DISTFILES=	${DEFAULT_DISTFILES} sphinx-${SPHINX_VER}-release${EXTRACT_SUFX}
.if !empty(PKGPATH:Mserver)
MESSAGE_SRC=	${PKGDIR}/MESSAGE ${PKGDIR}/MESSAGE.sphinx
.endif
PLIST.sphinx=	yes

post-extract:
	${CP} -R ${WRKDIR}/sphinx-${SPHINX_VER}-release/mysqlse ${WRKSRC}/storage/sphinx
.endif
