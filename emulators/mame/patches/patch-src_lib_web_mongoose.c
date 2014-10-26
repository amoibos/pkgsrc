$NetBSD: patch-src_lib_web_mongoose.c,v 1.4 2014/10/26 09:36:08 wiz Exp $

If _XOPEN_SOURCE is defined to 600, NetBSD does not provide strtoll
and other stuff.

--- src/lib/web/mongoose.c.orig	2014-10-26 08:51:23.000000000 +0000
+++ src/lib/web/mongoose.c
@@ -48,7 +48,7 @@
 #define _INTEGRAL_MAX_BITS 64   // Enable _stati64() on Windows
 #define _CRT_SECURE_NO_WARNINGS // Disable deprecation warning in VS2005+
 #undef WIN32_LEAN_AND_MEAN      // Let windows.h always include winsock2.h
-#define _XOPEN_SOURCE 600       // For flockfile() on Linux
+//#define _XOPEN_SOURCE 600       // For flockfile() on Linux
 #define __STDC_FORMAT_MACROS    // <inttypes.h> wants this for C++
 #define __STDC_LIMIT_MACROS     // C++ wants that for INT64_MAX
 #ifndef _LARGEFILE_SOURCE
