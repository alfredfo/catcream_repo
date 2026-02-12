# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools

DESCRIPTION="Train simulator"
HOMEPAGE="https://github.com/sidju/tsim"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/sidju/tsim.git"
fi

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

src_prepare() {
	default
	eautoreconf
}
