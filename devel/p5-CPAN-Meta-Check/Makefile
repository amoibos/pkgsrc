# $NetBSD: Makefile,v 1.8 2014/10/04 13:29:09 wen Exp $

DISTNAME=	CPAN-Meta-Check-0.009
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=CPAN/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/CPAN-Meta-Check/
COMMENT=	Perl module to verify requirements in a CPAN::Meta object
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	{perl>=5.16.0,p5-CPAN-Meta>=2.120920}:../../devel/p5-CPAN-Meta
DEPENDS+=	{perl>=5.18.0,p5-CPAN-Meta-Requirements>=2.122}:../../devel/p5-CPAN-Meta-Requirements

BUILD_DEPENDS+= p5-Test-Deep-[0-9]*:../../devel/p5-Test-Deep

PERL5_PACKLIST=		auto/CPAN/Meta/Check/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
