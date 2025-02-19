EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1 pypi

DESCRIPTION="Zephyr RTOS Project meta-tool"
HOMEPAGE="https://github.com/zephyrproject-rtos/west"
SLOT="0"

LICENSE=""
KEYWORDS="~amd64"

RDEPEND="
	dev-python/colorama
	>=dev-python/pyyaml-5.1
	dev-python/pykwalify
"
BDEPEND=""
