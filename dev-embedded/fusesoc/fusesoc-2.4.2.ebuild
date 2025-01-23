EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1 pypi

DESCRIPTION="FuseSoC is an award-winning package manager and a set of build tools for HDL (Hardware Description Language) code"
HOMEPAGE="https://fusesoc.net/"
SLOT="0"

LICENSE="BSD-2"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-python/edalize-0.4.1
	>=dev-python/pyparsing-2.3.1
	>=dev-python/pyyaml-6.0
	>=dev-python/simplesat-0.9.1
	dev-python/fastjsonschema
	dev-python/jsonschema
"
BDEPEND=""