# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module systemd

DESCRIPTION="Mox email server"
HOMEPAGE="https://github.com/mjl-/mox"
SRC_URI="https://github.com/mjl-/mox/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/${P}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RDEPEND="
	acct-group/mox
	acct-user/mox
"

src_compile() {
	ego build
}

src_install() {
	dobin mox
	systemd_dounit "${FILESDIR}/mox.service"
	einstalldocs
}
