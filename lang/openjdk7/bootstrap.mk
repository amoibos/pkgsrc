# $NetBSD: bootstrap.mk,v 1.12 2014/07/25 23:24:13 ryoon Exp $

ONLY_FOR_PLATFORM=	NetBSD-[56].*-i386 NetBSD-[56].*-x86_64
ONLY_FOR_PLATFORM+=	DragonFly-[23].*-* SunOS-*-*

BOOT.nb5-i386=		bootstrap-jdk7u60-bin-netbsd-5-i386-20140719.tar.bz2
BOOT.nb5-amd64=		bootstrap-jdk7u60-bin-netbsd-5-amd64-20140719.tar.bz2
BOOT.nb6-i386=		bootstrap-jdk7u60-bin-netbsd-6-i386-20140719.tar.bz2
BOOT.nb6-amd64=		bootstrap-jdk7u60-bin-netbsd-6-amd64-20140719.tar.bz2
BOOT.nb7-i386=		bootstrap-jdk7u60-bin-netbsd-7-i386-20140719.tar.bz2
BOOT.nb7-amd64=		bootstrap-jdk7u60-bin-netbsd-7-amd64-20140719.tar.bz2
BOOT.dfly3.6-amd64=	bootstrap-jdk7u60-bin-dragonfly-3.6-amd64-20140719.tar.bz2
BOOT.dfly3.8-amd64=	bootstrap-jdk7u60-bin-dragonfly-3.8-amd64-20140719.tar.bz2

.if !empty(MACHINE_PLATFORM:MNetBSD-5.[0-8]*-i386) || make(distinfo)
DISTFILES+=		${BOOT.nb5-i386}
EXTRACT_ONLY+=		${BOOT.nb5-i386}
.endif

.if !empty(MACHINE_PLATFORM:MNetBSD-5.[0-8]*-x86_64) || make(distinfo)
DISTFILES+=		${BOOT.nb5-amd64}
EXTRACT_ONLY+=		${BOOT.nb5-amd64}
.endif

.if !empty(MACHINE_PLATFORM:MNetBSD-6.[0-8]*-i386) || make(distinfo)
DISTFILES+=		${BOOT.nb6-i386}
EXTRACT_ONLY+=		${BOOT.nb6-i386}
.endif

.if !empty(MACHINE_PLATFORM:MNetBSD-6.[0-8]*-x86_64) || make(distinfo)
DISTFILES+=		${BOOT.nb6-amd64}
EXTRACT_ONLY+=		${BOOT.nb6-amd64}
.endif

.if !empty(MACHINE_PLATFORM:MNetBSD-6.99*-i386) || make(distinfo)
DISTFILES+=		${BOOT.nb7-i386}
EXTRACT_ONLY+=		${BOOT.nb7-i386}
.endif

.if !empty(MACHINE_PLATFORM:MNetBSD-6.99*-x86_64) || make(distinfo)
DISTFILES+=		${BOOT.nb7-amd64}
EXTRACT_ONLY+=		${BOOT.nb7-amd64}
.endif

.if !empty(MACHINE_PLATFORM:MDragonFly-3.6*-x86_64) || make(distinfo)
DISTFILES+=		${BOOT.dfly3.6-amd64}
EXTRACT_ONLY+=		${BOOT.dfly3.6-amd64}
.endif

.if !empty(MACHINE_PLATFORM:MDragonFly-3.[8-9]*-x86_64) || make(distinfo)
DISTFILES+=		${BOOT.dfly3.8-amd64}
EXTRACT_ONLY+=		${BOOT.dfly3.8-amd64}
.endif

.if ${OPSYS} == "SunOS"
BUILDLINK_DEPMETHOD.sun-jdk7?=	build
.include "../../lang/sun-jdk7/buildlink3.mk"
#NB: sun-jdk7 includes sun-jre7/buildlink3.mk
JDK_BOOTDIR=	${BUILDLINK_JAVA_PREFIX.sun-jre7:tA}
MAKE_ENV+=		ALT_JDK_IMPORT_PATH=${JDK_BOOTDIR}
.endif

ALT_BOOTDIR=		${WRKDIR}/bootstrap
