# $NetBSD: Makefile,v 1.6 2014/10/09 14:07:00 wiz Exp $
#

DISTNAME=		user-cygwin-20130712
CATEGORIES=		sysutils
MASTER_SITES=		# empty
DISTFILES=		# empty

MAINTAINER=		obache@NetBSD.org
COMMENT=		Limited NetBSD-compatible useradd/groupadd commands

ONLY_FOR_PLATFORM=	Cygwin-*-*

NO_CONFIGURE=		yes
NO_BUILD=		yes

INSTALLATION_DIRS=	sbin

do-install:
.for f in useradd userdel groupadd groupdel
	${INSTALL_SCRIPT} ${FILESDIR}/${f}.sh ${DESTDIR}${PREFIX}/sbin/${f}
.endfor

.include "../../mk/bsd.pkg.mk"
