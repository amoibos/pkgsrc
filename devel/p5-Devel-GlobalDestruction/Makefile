# $NetBSD: Makefile,v 1.14 2014/09/07 12:21:39 wiz Exp $

DISTNAME=	Devel-GlobalDestruction-0.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 net
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Devel/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Devel-GlobalDestruction/
COMMENT=	Perl 5 package exposing the flag which marks global destruction
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Sub-Exporter-Progressive>=0.001011:../../devel/p5-Sub-Exporter-Progressive

USE_LANGUAGES=		c
PERL5_PACKLIST=		auto/Devel/GlobalDestruction/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
