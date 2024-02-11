# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} pypy3 )
inherit distutils-r1

DESCRIPTION="A multi-function Discord bot"
HOMEPAGE="https://discord.red"
SRC_URI="https://github.com/Cog-Creators/Red-DiscordBot/archive/refs/tags/${PV}.tar.gz"
S="${WORKDIR}/Red-DiscordBot-${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
DEPEND="
	=virtual/jdk-17:*
"

RDEPEND="=virtual/jre-17:*"
