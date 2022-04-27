EAPI=7
inherit autotools git-r3

DESCRIPTION="Hare is a systems programming language."
HOMEPAGE="https://harelang.org/"
SRC_URI="https://git.sr.ht/~sircmpwn/hare"
EGIT_REPO_URI="https://git.sr.ht/~sircmpwn/hare"

SLOT="0"
KEYWORDS=""

BDEPEND="dev-lang/harec"

src_configure() {
	if [[ -x ${ECONF_SOURCE:-.}/configure ]] ; then
		econf
	fi
	cp "${S}/config.example.mk" "${S}/config.mk"
	sed -i 's/\/usr\/local\//\/usr\//g' "${S}/config.mk"
}
