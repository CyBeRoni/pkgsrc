# $NetBSD: Makefile,v 1.13 2015/06/12 10:50:47 wiz Exp $

DISTNAME=	Net-IPv6Addr-0.2
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	7
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/~tmonroe/Net-IPv6Addr/
COMMENT=	Check the validity of IPv6 addresses

DEPENDS+=	p5-Math-Base85-[0-9]*:../../math/p5-Math-Base85
DEPENDS+=	p5-Net-IPv4Addr-[0-9]*:../../net/p5-Net-IPv4Addr

PERL5_PACKLIST=		auto/Net/IPv6Addr/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
