# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Compatibility library for musl"
HOMEPAGE="https://github.com/void-linux/void-packages/tree/master/srcpkgs/musl-legacy-compat"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="amd64"
IUSE="stub"

S="${WORKDIR}"

src_install() {
	# this can probably be a lot nicer
	# thought ebuilds forced use of bash but apparently
	# it complained about my GNU-extensions (funny in this ebuild lol)
	header_name=${PN#"musl-compat-"}

	use stub && header_name+="-stub"
	header_name+=".h"

	doheader "${FILESDIR}"/${header_name}
}
