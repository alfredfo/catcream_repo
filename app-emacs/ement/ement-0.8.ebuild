# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
NEED_EMACS=27.1

inherit elisp

DESCRIPTION="Matrix client for Emacs"
HOMEPAGE="https://https://github.com/alphapapa/ement.el"
SRC_URI="https://github.com/alphapapa/${PN}.el/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

S="${WORKDIR}/${PN}.el-${PV}"
SITEFILE="50${PN}-gentoo.el"

DEPEND="
	>=app-emacs/taxy-magit-section-0.12.2
"
BDEPEND="${DEPEND}"
