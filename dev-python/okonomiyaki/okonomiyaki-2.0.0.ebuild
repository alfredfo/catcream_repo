EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1 pypi

DESCRIPTION="Okonomiyaki is aimed at consolidating a lot of our low-level code used for Enthought's eggs and python runtimes. "
HOMEPAGE="https://github.com/enthought/okonomiyaki"
SLOT="0"

LICENSE="BSD-2"
KEYWORDS="~amd64"

RDEPEND=""
BDEPEND=""