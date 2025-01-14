# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Low-level, streaming YAML interface"
HOMEPAGE="https://github.com/snoyberg/yaml#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="no-unicode system-libyaml"

RDEPEND=">=dev-haskell/conduit-1.2.8:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/resourcet-0.3:=[profile?] <dev-haskell/resourcet-1.4:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	system-libyaml? ( dev-libs/libyaml )
	!system-libyaml? ( dev-haskell/libyaml-clib:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	system-libyaml? ( virtual/pkgconfig )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag no-unicode no-unicode) \
		$(cabal_flag system-libyaml system-libyaml)
}
