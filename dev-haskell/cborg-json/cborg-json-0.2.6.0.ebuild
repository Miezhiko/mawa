# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A library for encoding JSON as CBOR"
HOMEPAGE="https://github.com/well-typed/cborg"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	>=dev-haskell/aeson-pretty-0.8:=[profile?] <dev-haskell/aeson-pretty-0.9:=[profile?]
	>=dev-haskell/base64-bytestring-1.0:=[profile?] <dev-haskell/base64-bytestring-1.3:=[profile?]
	>=dev-haskell/cborg-0.2:=[profile?] <dev-haskell/cborg-0.3:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/text-1.1:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/base-orphans
		>=dev-haskell/base16-bytestring-1.0 <dev-haskell/base16-bytestring-1.1
		>=dev-haskell/quickcheck-2.9 <dev-haskell/quickcheck-2.15
		>=dev-haskell/tasty-0.11 <dev-haskell/tasty-1.6
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11 )
"
