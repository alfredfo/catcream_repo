# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module systemd

COMMIT="85ca823eb29347726596389133ff14c8288d9185"
DESCRIPTION="alps is a webmail client"
HOMEPAGE="https://sr.ht/~migadu/alps/"
SRC_URI="https://git.sr.ht/~migadu/alps/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" https://github.com/alfredfo/alps-deps/raw/refs/heads/master/alps-${COMMIT}-deps.tar.xz -> ${P}-deps.tar.xz"
S="${WORKDIR}/alps-${COMMIT}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	acct-user/alps
	acct-group/alps
"
DEPEND="${RDEPEND}"

src_compile() {
	ego build ./cmd/alps
}

src_install() {
	dobin alps
	systemd_dounit "${FILESDIR}/alps.service"
	einstalldocs
}
