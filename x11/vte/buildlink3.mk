# $NetBSD: buildlink3.mk,v 1.42 2015/04/25 14:25:20 tnn Exp $

BUILDLINK_TREE+=	vte

.if !defined(VTE_BUILDLINK3_MK)
VTE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.vte+=	vte>=0.14.0
BUILDLINK_ABI_DEPENDS.vte+=	vte>=0.28.1nb16
BUILDLINK_PKGSRCDIR.vte?=	../../x11/vte

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/termcap.buildlink3.mk"
.endif # VTE_BUILDLINK3_MK

BUILDLINK_TREE+=	-vte
