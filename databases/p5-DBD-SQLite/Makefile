# $NetBSD: Makefile,v 1.53 2015/10/10 01:58:02 ryoon Exp $

DISTNAME=	DBD-SQLite-1.48
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBD/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/DBD-SQLite/
COMMENT=	Perl DBI/DBD driver for sqlite databases (self contained)
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=	c
PERL5_PACKLIST=	auto/DBD/SQLite/.packlist
MAKE_PARAMS+=	SQLITE_LOCATION=${BUILDLINK_PREFIX.sqlite3}

BUILDLINK_API_DEPENDS.p5-DBI+=	p5-DBI>=1.580
BUILDLINK_API_DEPENDS.sqlite3+=	sqlite3>=3.8.4.1

.include "../../databases/p5-DBI/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
