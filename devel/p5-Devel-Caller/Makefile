# $NetBSD: Makefile,v 1.11 2014/05/29 23:35:49 wiz Exp $

DISTNAME=	Devel-Caller-2.05
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	5
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Devel/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Devel-Caller/
COMMENT=	Meatier versions of caller
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-PadWalker>0.08:../../devel/p5-PadWalker

USE_LANGUAGES=		c
PERL5_PACKLIST=		auto/Devel/Caller/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
