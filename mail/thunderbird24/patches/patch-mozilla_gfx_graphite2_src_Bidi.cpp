$NetBSD: patch-mozilla_gfx_graphite2_src_Bidi.cpp,v 1.1 2014/07/27 05:36:07 ryoon Exp $

--- mozilla/gfx/graphite2/src/Bidi.cpp.orig	2013-10-23 22:08:57.000000000 +0000
+++ mozilla/gfx/graphite2/src/Bidi.cpp
@@ -30,6 +30,11 @@ of the License or (at your option) any l
 
 using namespace graphite2;
 
+#ifdef __sun
+#undef CS
+#undef ES
+#endif
+
 enum DirCode {  // Hungarian: dirc
         Unk        = -1,
         N          =  0,   // other neutrals (default) - ON
