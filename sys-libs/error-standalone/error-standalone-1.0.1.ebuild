# Copyright 2022-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Compatibility library for the error.h header provided by glibc"
HOMEPAGE="https://github.com/void-linux/void-packages/tree/master/srcpkgs/musl-legacy-compat"
SRC_URI="https://github.com/alfredfo/error-standalone/archive/refs/tags/v1.0.1.tar.gz -> error-standalone-1.0.1.tar.gz"
LICENSE="|| ( BSD-2 BSD )"
SLOT="0"
KEYWORDS="~amd64"

src_install() {
	doheader "${S}"/error.h
}
