# $NetBSD: options.mk,v 1.1 2015/08/19 07:11:44 he Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.libreoffice4
PKG_SUPPORTED_OPTIONS=	java debug kde4 gtk3

.include "../../mk/bsd.prefs.mk"
.if ${OPSYS} == "NetBSD" || ${OPSYS} == "SunOS"
PKG_SUGGESTED_OPTIONS=	java
.endif

.include "../../mk/bsd.options.mk"

PLIST_VARS+=	java kde4 gtk3

.if !empty(PKG_OPTIONS:Mjava)
USE_JAVA=		yes
USE_JAVA2=		yes
BUILD_DEPENDS+=	apache-ant-[0-9]*:../../devel/apache-ant
FIND_PREFIX:=		ANTDIR=apache-ant
CONFIGURE_ARGS+=	--with-ant-home=${ANTDIR}

DEPENDS+=	hsqldb18-[0-9]*:../../databases/hsqldb18
FIND_PREFIX+=		HSQLDB_SYSDIR=hsqldb18
CONFIGURE_ARGS+=	--with-hsqldb-jar=${HSQLDB_SYSDIR}/lib/java/hsqldb18/hsqldb.jar
.include "../../mk/find-prefix.mk"
CONFIGURE_ARGS+=	--enable-ext-wiki-publisher \
			--with-java \
			--with-jdk-home=${PKG_JAVA_HOME} \
			--without-system-beanshell \
			--enable-scripting-beanshell \
			--disable-scripting-javascript \
			--with-system-hsqldb
.include "../../mk/java-env.mk"
.include "../../mk/java-vm.mk"
PLIST_SRC+=		${PLIST_SRC_DFLT:Q} ${PKGDIR}/PLIST.java
PLIST.java=		yes
.else
CONFIGURE_ARGS+=	--without-java
.endif

.if !empty(PKG_OPTIONS:Mdebug)
CONFIGURE_ARGS+=	--enable-debug
CONFIGURE_ARGS+=	--enable-selective-debuginfo="all"
PLIST_SRC=		${PLIST_SRC_DFLT:Q} ${PKGDIR}/PLIST.debug
.else
CONFIGURE_ARGS+=	--enable-release-build
.endif

.if !empty(PKG_OPTIONS:Mgtk3)
CONFIGURE_ARGS+=	--enable-gtk3
PLIST.gtk3=		yes
.include "../../x11/gtk3/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-gtk3
.endif

.if !empty(PKG_OPTIONS:Mkde4)
CONFIGURE_ARGS+=	--enable-kde4
CONFIGURE_ENV+=		KDE4DIR="${LOCALBASE}"
PLIST.kde4=		yes
.include "../../x11/kdelibs4/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-kde4
.endif
