# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module systemd

DESCRIPTION="Simple HTTP-based pub-sub notification service"
HOMEPAGE="https://ntfy.sh/"
SRC_URI="https://github.com/binwiederhier/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
https://github.com/alfredfo/${PN}-deps/raw/master/${P}-vendor.tar.xz"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}"

src_compile() {
	emake cli-deps-static-sites
	mkdir -p dist/ntfy_linux_server server/docs
	ego build -o dist/ntfy_linux_server/ntfy
	# -tags sqlite_omit_load_extension,osusergo,netgo
}

src_install() {
	dobin dist/ntfy_linux_server/ntfy
	systemd_dounit server/ntfy.service
	keepdir /etc/ntfy
	insinto /etc/ntfy
	newins server/server.yml server.yml
}
