# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CABAL_PN="${PN}"
# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal git-r3

LIVE_EBUILD=yes

DESCRIPTION="Unofficial OpenAI client"
HOMEPAGE="https://github.com/agrafix/openai-hs#readme"
EGIT_REPO_URI="https://github.com/agrafix/${PN}.git"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/casing:=[profile?]
	dev-haskell/cpphs:=[profile?]
	dev-haskell/http-client:=[profile?]
	dev-haskell/http-types:=[profile?]
	>=dev-haskell/openai-servant-9999:=[profile?]
	dev-haskell/servant:=[profile?]
	dev-haskell/servant-auth-client:=[profile?]
	dev-haskell/servant-client:=[profile?]
	dev-haskell/servant-multipart-client:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
	test? ( dev-haskell/hspec
		dev-haskell/http-client-tls
		dev-haskell/servant-client-core
		dev-haskell/vector )
"

S="${WORKDIR}/${P}/${PN}"

src_prepare() {
	# no chance to link to -threaded on ppc64, alpha and others
	# who use UNREG, not only ARM
	if ! ghc-supports-threaded-runtime; then
		cabal_chdeps '-threaded' ' '
	fi
	eapply_user
}
