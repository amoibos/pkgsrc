# $NetBSD: Makefile,v 1.11 2014/05/29 23:36:24 wiz Exp $

DISTNAME=	Test-use-ok-0.11
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Test-use-ok/
COMMENT=	Alternative to Test::More::use_ok
LICENSE=	cc0-1.0-universal

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Test/use/ok/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
