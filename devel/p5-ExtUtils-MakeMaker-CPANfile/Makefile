# $NetBSD: Makefile,v 1.1 2014/11/24 11:41:12 mef Exp $

DISTNAME=	ExtUtils-MakeMaker-CPANfile-0.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/I/IS/ISHIGAKI/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/~ishigaki/ExtUtils-MakeMaker-CPANfile/
COMMENT=	Loads CPANfile & modifies parameters for WriteMakefile (Makefile.PL)
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=	auto/ExtUtils/MakeMaker/CPANfile/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
