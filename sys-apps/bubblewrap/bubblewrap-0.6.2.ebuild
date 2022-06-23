# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit linux-info autotools git-r3

DESCRIPTION="Unprivileged sandboxing tool, namespaces-powered chroot-like solution"
HOMEPAGE="https://github.com/containers/bubblewrap/"
# SRC_URI="https://github.com/containers/${PN}/releases/download/v${PV}/${P}.tar.xz"
EGIT_REPO_URI="https://github.com/containers/bubblewrap.git"


LICENSE="LGPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~loong ~ppc ~ppc64 ~riscv ~x86"
IUSE="selinux +suid"

RDEPEND="
	sys-libs/libseccomp
	sys-libs/libcap
	selinux? ( >=sys-libs/libselinux-2.1.9 )
"
DEPEND="${RDEPEND}"
BDEPEND="
	app-text/docbook-xml-dtd:4.3
	app-text/docbook-xsl-stylesheets
	dev-libs/libxslt
	virtual/pkgconfig
"

