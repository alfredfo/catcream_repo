# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

NEED_EMACS=27.1

inherit elisp

DESCRIPTION="Major mode for editing nftables"
HOMEPAGE="https://elpa.gnu.org/packages/nftables-mode.html"

SRC_URI="https://elpa.gnu.org/packages/nftables-mode-1.1.tar"
KEYWORDS="~amd64"

LICENSE="GPL-3+"
SLOT="0"

SITEFILE="50${PN}-gentoo.el"
