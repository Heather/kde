# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit kde5

DESCRIPTION="System service to manage user's activities, track the usage patterns etc."
LICENSE="|| ( GPL-2 GPL-3 )"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep kdbusaddons)
	$(add_frameworks_dep kglobalaccel)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kio)
	$(add_frameworks_dep kservice)
	$(add_frameworks_dep kwindowsystem)
	$(add_frameworks_dep kxmlgui)
	$(add_qt_dep qtdbus)
	$(add_qt_dep qtgui)
	$(add_qt_dep qtsql)
	$(add_qt_dep qtwidgets)
"
DEPEND="${COMMON_DEPEND}
	>=dev-libs/boost-1.54
"
RDEPEND="${COMMON_DEPEND}
	!<kde-base/kactivities-4.13.3-r2:4
	!kde-base/kactivitymanagerd
	!<kde-frameworks/kactivities-5.20.0
	!<kde-plasma/plasma-desktop-5.6.1
"
