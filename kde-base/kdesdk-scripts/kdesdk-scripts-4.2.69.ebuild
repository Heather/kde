# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

KMNAME="${PN/-*/}"
KMMODULE="${PN/*-/}"

inherit kde4-meta

DESCRIPTION="KDE SDK Scripts"
KEYWORDS="~alpha ~amd64 ~ia64 ~x86"
IUSE="doc debug"
