# $NetBSD: Makefile,v 1.63 2015/08/31 00:16:38 gdt Exp $
#

VERSION=		1.6
DISTNAME=		viking-${VERSION}
CATEGORIES=		geography
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=viking/}${VERSION}/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		gdt@NetBSD.org
HOMEPAGE=		http://viking.sourceforge.net/
COMMENT=		Viking manages GPS data, supports OpenStreetMap and geocaching

LICENSE=		gnu-gpl-v2

GNU_CONFIGURE=		yes

TEST_TARGET=		check

CONFIGURE_ARGS+=	--disable-magic

# Perhaps optionize use of gpsd (remove bl3, add this).
# CONFIGURE_ARGS+=	--disable-realtime-gps-tracking

CONFIGURE_ARGS+=	--disable-mapnik

DEPENDS+=		gpsbabel-[0-9]*:../../geography/gpsbabel
DEPENDS+=		p5-XML-Parser-[0-9]*:../../textproc/p5-XML-Parser
REPLACE_PERL=		viking-remote

USE_TOOLS+=		gmake intltool msgfmt pkg-config

.include "../../sysutils/desktop-file-utils/desktopdb.mk"

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../graphics/libexif/buildlink3.mk"
.include "../../graphics/gexiv2/buildlink3.mk"
.include "../../geography/gpsd/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../lang/perl5/buildlink3.mk"
.include "../../textproc/gnome-doc-utils/buildlink3.mk"
.include "../../mk/omf-scrollkeeper.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
