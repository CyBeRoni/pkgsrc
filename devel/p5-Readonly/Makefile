# $NetBSD: Makefile,v 1.13 2015/06/12 10:49:40 wiz Exp $
#

DISTNAME=	Readonly-2.00
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Readonly/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Readonly/
COMMENT=	Perl 5 module for creating read-only scalars, arrays and hashes
LICENSE=	${PERL5_LICENSE}

#REPLACE_PERL=	eg/benchmark.pl

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Readonly/.packlist
PERL5_MODULE_TYPE=	Module::Build

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
