# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Secure WebSocket (WSS) clients"
HOMEPAGE="https://hackage.haskell.org/package/wuss"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="pedantic"

RDEPEND=">=dev-haskell/data-default-0.7.1.1:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-lang/ghc-9.6.2:=
	|| ( ( >=dev-haskell/crypton-connection-0.3.2:=[profile?] <dev-haskell/crypton-connection-0.4:=[profile?] )
		( >=dev-haskell/crypton-connection-0.4.0:=[profile?] <dev-haskell/crypton-connection-0.5:=[profile?] ) )
	|| ( ( >=dev-haskell/network-3.1.4.0:=[profile?] <dev-haskell/network-3.2:=[profile?] )
		( >=dev-haskell/network-3.2.0.0:=[profile?] <dev-haskell/network-3.3:=[profile?] ) )
	|| ( ( >=dev-haskell/websockets-0.12.7.3:=[profile?] <dev-haskell/websockets-0.13:=[profile?] )
		( >=dev-haskell/websockets-0.13.0.0:=[profile?] <dev-haskell/websockets-0.14:=[profile?] ) )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.10.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag pedantic pedantic)
}
