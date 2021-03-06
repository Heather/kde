# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit kde5

DESCRIPTION="Library for embedding KParts in a Kontact component"
LICENSE="LGPL-2+"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep kiconthemes)
	$(add_frameworks_dep kio)
	$(add_frameworks_dep kparts)
	$(add_frameworks_dep kwindowsystem)
	$(add_frameworks_dep kxmlgui)
	$(add_qt_dep qtdbus)
	$(add_qt_dep qtgui)
	$(add_qt_dep qtwidgets)
	$(add_qt_dep qtxml)
"
RDEPEND="${DEPEND}"
