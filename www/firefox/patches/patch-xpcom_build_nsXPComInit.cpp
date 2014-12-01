$NetBSD: patch-xpcom_build_nsXPComInit.cpp,v 1.2 2014/12/01 18:11:14 ryoon Exp $

--- xpcom/build/nsXPComInit.cpp.orig	2014-11-21 03:37:53.000000000 +0000
+++ xpcom/build/nsXPComInit.cpp
@@ -138,7 +138,9 @@ extern nsresult nsStringInputStreamConst
 #include "mozilla/VisualEventTracer.h"
 #endif
 
+#ifndef MOZ_OGG_NO_MEM_REPORTING
 #include "ogg/ogg.h"
+#endif
 #if defined(MOZ_VPX) && !defined(MOZ_VPX_NO_MEM_REPORTING)
 #include "vpx_mem/vpx_mem.h"
 #endif
@@ -652,11 +654,13 @@ NS_InitXPCOM2(nsIServiceManager** aResul
   // this oddness.
   mozilla::SetICUMemoryFunctions();
 
+#ifndef MOZ_OGG_NO_MEM_REPORTING
   // Do the same for libogg.
   ogg_set_mem_functions(OggReporter::CountingMalloc,
                         OggReporter::CountingCalloc,
                         OggReporter::CountingRealloc,
                         OggReporter::CountingFree);
+#endif
 
 #if defined(MOZ_VPX) && !defined(MOZ_VPX_NO_MEM_REPORTING)
   // And for VPX.
