# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Package manager based on libdnf and libsolv. Replaces YUM."
HOMEPAGE="https://github.com/rpm-software-management/dnf"
SRC_URI="https://github.com/rpm-software-management/dnf/archive/refs/tags/4.17.0.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}"

src_compile() {
	cmake_src_compile
	cmake_build doc-man
}
