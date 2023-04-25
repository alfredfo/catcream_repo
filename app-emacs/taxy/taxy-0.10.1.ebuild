# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
NEED_EMACS=27.1

inherit elisp

DESCRIPTION="Programmable taxonomical hierarchies for arbitrary objects"
HOMEPAGE="https://github.com/alphapapa/taxy.el"

SRC_URI="https://github.com/alphapapa/${PN}.el/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

S="${WORKDIR}/${PN}.el"
SITEFILE="50${PN}-gentoo.el"

DEPEND="
	>=app-emacs/taxy-magit-section-0.12.2
"
BDEPEND="${DEPEND}"
