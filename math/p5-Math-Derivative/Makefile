# $NetBSD: Makefile,v 1.3 2015/06/12 10:50:29 wiz Exp $

DISTNAME=	Math-Derivative-0.01
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	math perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Math/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Math-Derivative
COMMENT=	Numeric 1st and 2nd order differentiation
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=	auto/Math/Derivative/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
