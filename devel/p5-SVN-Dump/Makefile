# $NetBSD: Makefile,v 1.8 2014/10/09 14:06:26 wiz Exp $

DISTNAME=	SVN-Dump-0.05
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	devel perl5 scm
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=SVN/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/SVN-Dump/
COMMENT=	Perl interface to Subversion dumps
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=		auto/SVN/Dump/.packlist
PERL5_MODULE_TYPE=	Module::Build

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
