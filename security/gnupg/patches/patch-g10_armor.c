$NetBSD: patch-g10_armor.c,v 1.1 2015/11/16 10:33:20 wiz Exp $

commit 936416690e6c889505d84fe96983a66983beae5e
Author: Werner Koch <wk@gnupg.org>
Date:   Thu Feb 26 09:38:58 2015 +0100

    gpg: Remove left-over debug message.

    * g10/armor.c (check_input): Remove log_debug.

diff --git a/g10/armor.c b/g10/armor.c
index 6c0013d..de1726d 100644
--- g10/armor.c
+++ g10/armor.c
@@ -534,9 +534,6 @@ check_input( armor_filter_context_t *afx, IOBUF a )
             /* This is probably input from a keyserver helper and we
                have not yet seen an error line.  */
             afx->key_failed_code = parse_key_failed_line (line+4, len-4);
-            log_debug ("armor-keys-failed (%.*s) ->%d\n",
-                       (int)len, line,
-                       afx->key_failed_code);
           }
 	if( i >= 0 && !(afx->only_keyblocks && i != 1 && i != 5 && i != 6 )) {
 	    hdr_line = i;
