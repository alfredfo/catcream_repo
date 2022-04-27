EAPI=7
inherit git-r3

DESCRIPTION="This is a Hare compiler written in C11 for POSIX-compatible systems."
HOMEPAGE="https://harelang.org/"
SRC_URI="https://git.sr.ht/~sircmpwn/harec"
EGIT_REPO_URI="https://git.sr.ht/~sircmpwn/harec"

SLOT="0"
KEYWORDS=""

BDEPEND="app-text/scdoc dev-libs/qbe"

src_configure() {
	sh configure --prefix="${EPREFIX}"/usr
}

src_compile() {
	emake
}
