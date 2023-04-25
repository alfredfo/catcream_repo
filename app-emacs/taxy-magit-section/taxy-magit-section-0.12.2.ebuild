# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
NEED_EMACS=27.1

inherit elisp

DESCRIPTION="Programmable taxonomical hierarchies for arbitrary objects"
HOMEPAGE="https://github.com/alphapapa/taxy.el"

SRC_URI="https://github.com/alphapapa/taxy.el/archive/refs/tags/${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

S="${WORKDIR}/taxy.el-${P}"
SITEFILE="50${PN}-gentoo.el"

DEPEND="
	>=app-emacs/taxy-0.10.1
"
RDEPEND="${DEPEND}"
