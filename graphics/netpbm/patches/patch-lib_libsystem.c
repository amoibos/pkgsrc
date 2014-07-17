$NetBSD: patch-lib_libsystem.c,v 1.2 2014/07/17 15:52:26 ryoon Exp $

* For SIGWINCH and SIGIO, _XOPEN_SOURCE should not be defined under OpenBSD 5.5
* SCO OpenServer 5.0.7/3.2 has no SIGURG and SIGIO.

--- lib/libsystem.c.orig	2010-07-10 01:38:01.000000000 +0000
+++ lib/libsystem.c
@@ -12,7 +12,10 @@
 
    Contributed to the public domain.
 =============================================================================*/
+/* for SIGWINCH and SIGIO */
+#if !defined(__OpenBSD__)
 #define _XOPEN_SOURCE
+#endif
 
 #include <unistd.h>
 #include <stdlib.h>
@@ -201,8 +204,10 @@ signalName(unsigned int const signalClas
         return "SIGTTIN";
     case SIGTTOU: /* POSIX.1 */
         return "SIGTTOU";
+#if defined(SIGURG)
     case SIGURG:
         return "SIGURG";
+#endif
     case SIGXCPU:
         return "SIGXCPU";
     case SIGXFSZ:
@@ -213,8 +218,10 @@ signalName(unsigned int const signalClas
         return "SIGPROF";
     case SIGWINCH:
         return "SIGWINCH";
+#if defined(SIGIO)
     case SIGIO:
         return "SIGIO";
+#endif
     case SIGSYS:
         return "SIGSYS";
     default:
