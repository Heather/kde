# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

KMNAME="kdebase-workspace"
OPENGL_REQUIRED="optional"
inherit kde4-meta

DESCRIPTION="KDE Command Runner"
IUSE="debug"
KEYWORDS="~alpha ~amd64 ~ia64 ~x86"

COMMONDEPEND="
	>=kde-base/ksmserver-${PV}:${SLOT}[kdeprefix=]
	>=kde-base/ksysguard-${PV}:${SLOT}[kdeprefix=]
	>=kde-base/libkworkspace-${PV}:${SLOT}[kdeprefix=]
	x11-libs/libXxf86misc
	x11-libs/libXcursor
	x11-libs/libXScrnSaver
"
DEPEND="${COMMONDEPEND}
	x11-libs/libXcursor
	x11-proto/xf86miscproto
	x11-proto/scrnsaverproto
"
RDEPEND="${COMMONDEPEND}"

KMEXTRACTONLY="
	libs/kdm/
	libs/ksysguard/
	libs/kworkspace/
	kcontrol/
	ksysguard/
	ksmserver/org.kde.KSMServerInterface.xml
	plasma/shells/screensaver/org.kde.plasma-overlay.App.xml
	kcheckpass/
"

KMLOADLIBS="libkworkspace"

src_configure() {
	mycmakeargs="${mycmakeargs}
		$(cmake-utils_use_with opengl OpenGL)"

	kde4-meta_src_configure
}
