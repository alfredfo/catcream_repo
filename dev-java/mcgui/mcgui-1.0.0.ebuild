# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="GUI library for TDA297 multicast lab"
HOMEPAGE=""
SRC_URI="https://git.sr.ht/~katt/mcgui/archive/${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	>=virtual/jdk-21:*
"

RDEPEND=">=virtual/jre-21:*"

JAVA_AUTOMATIC_MODULE_NAME="mcgui"
JAVA_MAIN_CLASS="mcgui.Main"
