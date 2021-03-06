# $NetBSD: Makefile,v 1.26 2015/08/18 07:31:01 wiz Exp $

DISTNAME=	clamav-${CLAMAV_VERSION}
#PKGREVISION=	2
PKGREVISION=	2
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=clamav/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.clamav.net/
COMMENT=	Anti-virus toolkit
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
SET_LIBDIR=		yes
CONFIGURE_ARGS+=	--disable-clamav
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--with-dbdir=${CLAMAV_DBDIR}
CONFIGURE_ARGS+=	--with-group=${CLAMAV_GROUP}
CONFIGURE_ARGS+=	--with-user=${CLAMAV_USER}
CONFIGURE_ARGS+=	--with-libcurl=${BUILDLINK_PREFIX.curl}
CONFIGURE_ARGS+=	--with-ltdl-include=${BUILDLINK_PREFIX.libltdl}/include
CONFIGURE_ARGS+=	--with-ltdl-lib=${BUILDLINK_PREFIX.libltdl}/lib
CONFIGURE_ARGS+=	--with-openssl=${BUILDLINK_PREFIX.openssl}
CONFIGURE_ARGS+=	--with-xml=${BUILDLINK_PREFIX.libxml2}
CONFIGURE_ARGS+=	--with-zlib=${BUILDLINK_PREFIX.zlib}
# pkgsrc enforces a "secure" version of zlib, so don't let this check
# bomb the build
CONFIGURE_ARGS+=	--disable-zlib-vcheck

CHECK_PORTABILITY_SKIP=	contrib/* unit_tests/* win32/*

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD" && !empty(OS_VERSION:M1.*)
CONFIGURE_ARGS+=	--disable-readdir-r
.else
CONFIGURE_ARGS+=	--enable-readdir_r
.endif

CFLAGS.SunOS+=		-D__EXTENSIONS__

BUILD_DEFS+=	CLAMAV_USER CLAMAV_GROUP CLAMAV_DBDIR
FILES_SUBST+=	CLAMAV_USER=${CLAMAV_USER}
FILES_SUBST+=	CLAMAV_GROUP=${CLAMAV_GROUP}
FILES_SUBST+=	CLAMAV_DBDIR=${CLAMAV_DBDIR}
MESSAGE_SUBST+=	CLAMAV_USER=${CLAMAV_USER}

SUBST_CLASSES+=		vars
SUBST_STAGE.vars=	pre-configure
SUBST_FILES.vars=	etc/clamd.conf.sample
SUBST_VARS.vars=	CLAMAV_DBDIR

RCD_SCRIPTS=	clamd freshclamd
SMF_METHODS=	${RCD_SCRIPTS}
SMF_INSTANCES=	${SMF_METHODS}

PKG_GROUPS+=	${CLAMAV_GROUP}
PKG_USERS+=	${CLAMAV_USER}:${CLAMAV_GROUP}

PKG_GROUPS_VARS+=	CLAMAV_GROUP
PKG_USERS_VARS=		CLAMAV_USER

EGDIR=		${PREFIX}/share/examples/clamav

OWN_DIRS_PERMS=		${CLAMAV_DBDIR} ${CLAMAV_USER} ${CLAMAV_GROUP} 0775
CONF_FILES=		# empty
CONF_FILES_PERMS=	# empty
.for i in clamav-milter.conf clamd.conf freshclam.conf
CONF_FILES+=		${EGDIR}/${i} ${PKG_SYSCONFDIR}/${i}
.endfor

INSTALLATION_DIRS+=	${EGDIR}

.include "options.mk"

post-install:
.for i in clamav-milter.conf clamd.conf freshclam.conf
	${INSTALL_DATA} ${WRKSRC}/etc/${i}.sample ${DESTDIR}${EGDIR}/${i}
.endfor

.include "Makefile.common"
.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/libltdl/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../devel/gmp/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
