# Copyright 2022-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 udev

DESCRIPTION="udev rules to support Ledger devices on Linux"
HOMEPAGE="https://github.com/LedgerHQ/udev-rules"
EGIT_REPO_URI="https://github.com/LedgerHQ/udev-rules.git"

LICENSE="Apache-2.0"
SLOT="0"

# No tests
RESTRICT="test"

RDEPEND="
	virtual/udev
"

src_install() {
	udev_dorules 20-hw1.rules
	einstalldocs
}

pkg_postinst() {
	udev_reload
}

pkg_postrm() {
	udev_reload
}
