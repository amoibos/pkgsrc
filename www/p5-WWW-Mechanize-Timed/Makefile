# $NetBSD: Makefile,v 1.5 2014/05/29 23:38:16 wiz Exp $

DISTNAME=	WWW-Mechanize-Timed-0.44
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=WWW/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/WWW-Mechanize-Timed/
COMMENT=	Perl 5 module for timing Mechanize requests
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-LWPx-TimedHTTP>=1.2:../../www/p5-LWPx-TimedHTTP
DEPENDS+=	p5-WWW-Mechanize>=0.72:../../www/p5-WWW-Mechanize

USE_LANGUAGES=	# empty
PERL5_PACKLIST= auto/WWW/Mechanize/Timed/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
