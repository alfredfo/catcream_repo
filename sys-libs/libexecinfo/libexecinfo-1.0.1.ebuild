# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit meson

DESCRIPTION="Standalone implementation of glibc's execinfo using libunwind"
HOMEPAGE="https://github.com/alfredfo/libexecinfo-unw"
SRC_URI="https://github.com/alfredfo/libexecinfo-unw/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""

RDEPEND=""
DEPEND="sys-libs/libunwind
	${RDEPEND}"
S="${WORKDIR}"/${PN}-unw-${PV}
