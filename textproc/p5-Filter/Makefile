# $NetBSD: Makefile,v 1.32 2014/10/09 13:44:57 wiz Exp $

DISTNAME=	Filter-1.49
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Filter/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Filter/
COMMENT=	Perl5 classes representing a number of source filters
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=		auto/Filter/Util/Call/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
