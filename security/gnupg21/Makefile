# $NetBSD: Makefile,v 1.10 2015/11/04 15:05:52 tnn Exp $

DISTNAME=	gnupg-2.1.9
PKGNAME=	${DISTNAME:S/gnupg-/gnupg21-/}
CATEGORIES=	security
MASTER_SITES=	ftp://ftp.gnupg.org/gcrypt/gnupg/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	ada@netbsdfr.org
HOMEPAGE=	https://www.gnupg.org/
COMMENT=	GnuPG with OpenPGP and S/MIME capabilities
LICENSE=	gnu-gpl-v3

DEPENDS+=	pinentry-[0-9]*:../../security/pinentry

CONFLICTS=	dirmngr-[0-9]*

BUILD_DEFS+=		VARBASE
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake pkg-config makeinfo
USE_LIBTOOL=		yes
INFO_FILES=		yes
GNU_CONFIGURE=		yes

.include "options.mk"

BUILDLINK_API_DEPENDS.libgpg-error+=	libgpg-error>=1.16
.include "../../security/libgpg-error/buildlink3.mk"
BUILDLINK_API_DEPENDS.libassuan+=	libassuan>=2.1.0
.include "../../security/libassuan2/buildlink3.mk"
.include "../../security/libksba/buildlink3.mk"
BUILDLINK_API_DEPENDS.npth+=		npth>=0.91
.include "../../devel/npth/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
