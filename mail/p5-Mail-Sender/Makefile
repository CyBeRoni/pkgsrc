# $NetBSD: Makefile,v 1.14 2015/08/07 01:31:20 wen Exp $
#

DISTNAME=	Mail-Sender-0.8.23
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}

MAINTAINER=	abs@NetBSD.org
HOMEPAGE=	http://search.cpan.org/~jenda/Mail-Sender/
COMMENT=	Sending mails with attachments through an SMTP server
LICENSE=	${PERL5_LICENSE}

#DEPENDS+=	{perl>=5.7.3,p5-MIME-Base64>=0}:../../converters/p5-MIME-Base64

PERL5_PACKLIST=	auto/Mail/Sender/.packlist

BUILD_TARGET=pure_all
INSTALL_TARGET=pure_install

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
