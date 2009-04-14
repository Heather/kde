# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

KMNAME="kdeaccessibility"

inherit kde4-meta

DESCRIPTION="KDE text-to-speech"
KEYWORDS="~alpha ~amd64 ~ia64 ~x86"
IUSE="alsa debug doc phonon"

DEPEND="
	alsa? ( media-libs/alsa-lib )
	phonon? ( >=media-sound/phonon-${PV} )
"
RDEPEND="${DEPEND}
	app-accessibility/epos
	app-accessibility/festival
	app-accessibility/flite
	app-accessibility/freetts
	app-accessibility/mbrola
"
src_configure() {
	# we enable all plugins
	mycmakeargs="${mycmakeargs}
		-DKDE4_KTTSD_COMMAND=ON
		-DKDE4_KTTSD_EPOS=ON
		-DKDE4_KTTSD_FESTIVAL=ON
		-DKDE4_KTTSD_FLITE=ON
		-DKDE4_KTTSD_FREETTS=ON
		-DKDE4_KTTSD_HADIFIX=ON
		$(cmake-utils_use alsa KDE4_KTTSD_ALSA)
		$(cmake-utils_use phonon KDE4_KTTSD_PHONON)"

	kde4-meta_src_configure
}
