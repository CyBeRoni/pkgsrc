# $NetBSD: Makefile,v 1.15 2015/06/12 22:57:42 taca Exp $

DISTNAME=	rubyzip-1.1.7
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME:S/ruby//}
CATEGORIES=	archivers

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/aussiegeek/rubyzip
COMMENT=	Ruby module for reading and writing zip files
LICENSE=	ruby-license

pre-configure:
	${CHMOD} -R -x ${WRKSRC}/Rakefile ${WRKSRC}/lib/zip/*.rb

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
