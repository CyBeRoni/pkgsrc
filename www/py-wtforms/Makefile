# $NetBSD: Makefile,v 1.11 2015/01/30 21:12:58 kleink Exp $

DISTNAME=	WTForms-2.0.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:tl}
CATEGORIES=	www python
MASTER_SITES=	http://pypi.python.org/packages/source/W/WTForms/
EXTRACT_SUFX=	.zip

MAINTAINER=	kleink@NetBSD.org
HOMEPAGE=	http://wtforms.simplecodes.com/
COMMENT=	Flexible forms validation and rendering library
LICENSE=	modified-bsd

USE_LANGUAGES=	# empty

post-extract:
	${FIND} ${WRKSRC} -type f -exec ${CHMOD} -x {} \;

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
