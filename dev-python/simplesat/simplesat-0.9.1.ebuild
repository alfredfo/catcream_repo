EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1 pypi

DESCRIPTION="Prototype for SAT-based dependency handling. This is a work in progress, do not expect any API not to change at this point."
HOMEPAGE="https://github.com/enthought/sat-solver"
SLOT="0"

LICENSE=""
KEYWORDS="~amd64"

RDEPEND="
	dev-python/attrs
	dev-python/six
"
BDEPEND=""