# $NetBSD: Makefile,v 1.57 2015/04/25 14:23:12 tnn Exp $

DISTNAME=	gqview-2.1.5
PKGREVISION=	23
CATEGORIES=	graphics x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gqview/}

MAINTAINER=	drochner@NetBSD.org
HOMEPAGE=	http://gqview.sourceforge.net/
COMMENT=	GTK2-based graphic file viewer (development version)

USE_TOOLS+=		msgfmt pkg-config
GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes

MAKE_ENV+=		builddir=.

LDFLAGS+=		-lm
LDFLAGS.SunOS+=		-lm -lsocket -lnsl

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../graphics/lcms/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/gtk2/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
