# $NetBSD: Makefile,v 1.1.1.1 2015/07/19 11:01:41 asau Exp $

DISTNAME=		postgresql-jdbc-9.3-${PGBUILD}.src
PKGNAME=		jdbc-postgresql93-${PGBUILD}
DISTFILES+=		${DISTNAME}.tar.gz ${JARDIST}
CATEGORIES=		databases
MASTER_SITES=		http://jdbc.postgresql.org/download/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://jdbc.postgresql.org/
COMMENT=		PostgreSQL 9.3 JDBC4 driver

PGBUILD=		1103
JARDIST=		postgresql-9.3-${PGBUILD}.jdbc4.jar
JARFILE=		postgresql93.jar
EXTRACT_ONLY=           ${DISTFILES:N*.jar}

INSTALLATION_DIRS=	lib/java ${DOCDIR}

USE_JAVA=		run
USE_JAVA2=		6
NO_BUILD=       	YES

DOCDIR=                 share/doc/java/${PKGBASE}
PLIST_SUBST+=		JARFILE=${JARFILE:Q}
PLIST_SUBST+=		DOCDIR=${DOCDIR:Q}

do-install:
	${INSTALL_DATA} ${DISTDIR}/${JARDIST} \
		${DESTDIR}${PREFIX}/lib/java/${JARFILE}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DESTDIR}${PREFIX}/${DOCDIR}

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
