# Copyright 2024-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..14} pypy3 )
inherit distutils-r1

DESCRIPTION="A Python package with bindings to the Virtual Instrument Software Architecture VISA library"
HOMEPAGE="https://pyvisa.readthedocs.io/en/latest/"
SRC_URI="https://github.com/pyvisa/pyvisa-py/releases/download/${PV}/pyvisa_py-${PV}.tar.gz"
S="${WORKDIR}/pyvisa_py-${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
