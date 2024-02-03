# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake git-r3

DESCRIPTION="Maybe it is the most quickly codesign alternative for iOS12+"
HOMEPAGE="https://github.com/zhlynn/zsign"
EGIT_REPO_URI="https://github.com/zhlynn/zsign.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""

RDEPEND="
	dev-libs/openssl
	sys-libs/zlib
"
DEPEND="${RDEPEND}"

PATCHES=(
	"${FILESDIR}/zsign-9999-add-install-target-for-zsign-binary.patch"
)
