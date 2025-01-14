# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A Prelude for Polysemy"
HOMEPAGE="https://github.com/tek/incipit-core#readme"

LICENSE=""	# FIXME: license unknown to cabal. Please pick it manually.
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="~dev-haskell/incipit-base-0.6.0.0:=[profile?]
	>=dev-haskell/polysemy-1.6:=[profile?] <dev-haskell/polysemy-1.10:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
