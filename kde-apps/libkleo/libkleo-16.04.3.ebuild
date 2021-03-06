# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

KDE_TEST="false"
inherit kde5

DESCRIPTION="Library for encryption handling"
LICENSE="LGPL-2+"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	$(add_frameworks_dep kcompletion)
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kiconthemes)
	$(add_frameworks_dep ktextwidgets)
	$(add_frameworks_dep kwidgetsaddons)
	$(add_frameworks_dep kwindowsystem)
	$(add_kdeapps_dep gpgmepp)
	$(add_kdeapps_dep kmime)
	$(add_kdeapps_dep pimcommon)
	$(add_qt_dep designer)
	$(add_qt_dep qtgui)
	$(add_qt_dep qtwidgets)
	$(add_qt_dep qtxml)
"
DEPEND="${COMMON_DEPEND}
	dev-libs/boost
	sys-devel/gettext
"
RDEPEND="${COMMON_DEPEND}
	!<kde-apps/kdepim-15.08.50:5
	!kde-apps/kdepim-common-libs:4
"
