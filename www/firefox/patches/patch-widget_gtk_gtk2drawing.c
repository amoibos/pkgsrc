$NetBSD: patch-widget_gtk_gtk2drawing.c,v 1.1 2014/12/01 18:11:14 ryoon Exp $

--- widget/gtk/gtk2drawing.c.orig	2014-11-21 03:37:52.000000000 +0000
+++ widget/gtk/gtk2drawing.c
@@ -3013,6 +3013,24 @@ moz_gtk_get_widget_border(GtkThemeWidget
 }
 
 gint
+moz_gtk_get_tab_border(gint* left, gint* top, gint* right, gint* bottom, 
+                       GtkTextDirection direction, GtkTabFlags flags)
+{
+    moz_gtk_get_widget_border(MOZ_GTK_TAB, left, top,
+                              right, bottom, direction,
+                              FALSE);
+
+    // Top tabs have no bottom border, bottom tabs have no top border
+    if (flags & MOZ_GTK_TAB_BOTTOM) {
+      *top = 0;
+    } else {
+      *bottom = 0;
+    }
+
+    return MOZ_GTK_SUCCESS;
+}
+
+gint
 moz_gtk_get_combo_box_entry_button_size(gint* width, gint* height)
 {
     /*
