# $NetBSD: buildlink3.mk,v 1.16 2015/09/25 00:57:16 tnn Exp $

BUILDLINK_TREE+=	modular-xorg-server

.if !defined(MODULAR_XORG_SERVER_BUILDLINK3_MK)
MODULAR_XORG_SERVER_BUILDLINK3_MK:=

.include "../../mk/bsd.fast.prefs.mk"

USE_OLD_MODULAR_XORG_SERVER?=	no

.if !empty(USE_OLD_MODULAR_XORG_SERVER:M[yY][eE][sS])
BUILDLINK_API_DEPENDS.modular-xorg-server+=	modular-xorg-server>=1.12.4nb12<1.17
BUILDLINK_PKGSRCDIR.modular-xorg-server?=	../../x11/modular-xorg-server112
.else
BUILDLINK_API_DEPENDS.modular-xorg-server+=	modular-xorg-server>=1.17
BUILDLINK_PKGSRCDIR.modular-xorg-server?=	../../x11/modular-xorg-server
.endif

BUILDLINK_DEPMETHOD.libpciaccess=	full
.include "../../sysutils/libpciaccess/buildlink3.mk"
.include "../../x11/pixman/buildlink3.mk"

.include "../../x11/compositeproto/buildlink3.mk"
.include "../../x11/dri2proto/buildlink3.mk"
.include "../../x11/dri3proto/buildlink3.mk"
.include "../../x11/fontsproto/buildlink3.mk"
.if !empty(USE_OLD_MODULAR_XORG_SERVER:M[yY][eE][sS])
.include "../../graphics/MesaLib7/buildlink3.mk" # XXX should not be needed for non-dri build
.else
.include "../../graphics/MesaLib/buildlink3.mk" # XXX should not be needed for non-dri build
.include "../../x11/resourceproto/buildlink3.mk"
.include "../../x11/scrnsaverproto/buildlink3.mk"
.include "../../x11/presentproto/buildlink3.mk"
.endif
.include "../../x11/inputproto/buildlink3.mk"
.include "../../x11/randrproto/buildlink3.mk"
.include "../../x11/renderproto/buildlink3.mk"
.include "../../x11/videoproto/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"
.include "../../x11/xf86driproto/buildlink3.mk"
.include "../../x11/xproto/buildlink3.mk"
.include "../../x11/xineramaproto/buildlink3.mk"
.endif # MODULAR_XORG_SERVER_BUILDLINK3_MK

BUILDLINK_TREE+=	-modular-xorg-server
