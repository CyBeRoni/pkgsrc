# $NetBSD: Makefile,v 1.22 2015/09/13 11:56:42 taca Exp $

DISTNAME=	rspec-rails-3.3.3
CATEGORIES=	devel

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://relishapp.com/rspec
COMMENT=	Test-double framework for rspec
LICENSE=	mit

DEPENDS+=	${RUBY_ACTIVESUPPORT_DEPENDS}
DEPENDS+=	${RUBY_ACTIONPACK_DEPENDS}
DEPENDS+=	${RUBY_RAILTIES_DEPENDS}
DEPENDS+=	${RUBY_PKGPREFIX}-rspec-support>=3.3.0<3.4:../../devel/ruby-rspec-support
DEPENDS+=	${RUBY_PKGPREFIX}-rspec-core>=3.3.0<3.4:../../devel/ruby-rspec-core
DEPENDS+=	${RUBY_PKGPREFIX}-rspec-expectations>=3.3.0<3.4:../../devel/ruby-rspec-expectations
DEPENDS+=	${RUBY_PKGPREFIX}-rspec-mocks>=3.3.0<3.4:../../devel/ruby-rspec-mocks

RUBY_RAILS_SUPPORTED=

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
