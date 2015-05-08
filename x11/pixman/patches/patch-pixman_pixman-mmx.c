$NetBSD: patch-pixman_pixman-mmx.c,v 1.1 2015/01/23 15:10:51 joerg Exp $

--- pixman/pixman-mmx.c.orig	2015-01-11 01:17:43.000000000 +0000
+++ pixman/pixman-mmx.c
@@ -89,7 +89,7 @@ _mm_mulhi_pu16 (__m64 __A, __m64 __B)
     return __A;
 }
 
-#  ifdef __OPTIMIZE__
+#  if defined __OPTIMIZE__ && !defined(__clang__)
 extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 _mm_shuffle_pi16 (__m64 __A, int8_t const __N)
 {
