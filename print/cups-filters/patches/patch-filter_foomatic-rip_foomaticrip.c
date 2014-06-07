$NetBSD: patch-filter_foomatic-rip_foomaticrip.c,v 1.1 2014/06/07 11:47:47 wiz Exp $

mkstemps doesn't exist on NetBSD either.
(Should be a configure test instead.)

--- filter/foomatic-rip/foomaticrip.c.orig	2014-06-06 08:49:59.000000000 +0000
+++ filter/foomatic-rip/foomaticrip.c
@@ -740,7 +740,7 @@ int main(int argc, char** argv)
         debug = 1;
 
     if (debug) {
-#ifdef __UCLIBC__
+#if defined(__UCLIBC__) || defined(__NetBSD__)
 	sprintf(tmp, "%s-log-XXXXXX", LOG_FILE);
 	int fd = mkstemp (tmp);
 #else
