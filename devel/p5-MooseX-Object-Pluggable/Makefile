# $NetBSD: Makefile,v 1.15 2014/07/13 11:39:43 wen Exp $

DISTNAME=	MooseX-Object-Pluggable-0.0013
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MooseX/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/MooseX-Object-Pluggable/
COMMENT=	Perl 5 module to add plugin support to Moose classes via roles
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Module-Pluggable-[0-9]*:../../devel/p5-Module-Pluggable
DEPENDS+=	p5-Moose>=0:../../devel/p5-Moose

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/MooseX/Object/Pluggable/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
