# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0

CABAL_PN="Kalmarity"

CABAL_FEATURES=""
inherit haskell-cabal git-r3

MY_PN="Kalmarity"
MY_P="${MY_PN}-${PV}"

DESCRIPTION=""
HOMEPAGE="https://github.com/Miezhiko/${MY_PN}"
EGIT_REPO_URI="https://github.com/Miezhiko/${MY_PN}.git"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/aeson-2.0.3.0:=
	>=dev-haskell/base-unicode-symbols-0.2:=
	>=dev-haskell/calamity-0.7.1.0:=
	>=dev-haskell/calamity-commands-0.4.0.0:=
	>=dev-haskell/conduit-1.3.4.1:=
	>=dev-haskell/data-flags-0.0.3.4:=
	>=dev-haskell/df1-0.4.1:=
	>=dev-haskell/di-1.3:=
	>=dev-haskell/di-core-1.0.4:=
	>=dev-haskell/di-polysemy-0.2:=
	>=dev-haskell/lens-5.2:=
	>=dev-haskell/monad-logger-0.3.39:=
	>=dev-haskell/optics-0.4.2:=
	>=dev-haskell/optparse-generic-1.4.9:=
	>=dev-haskell/polysemy-1.7.1.0:=
	>=dev-haskell/polysemy-plugin-0.4.3.1:=
	>=dev-haskell/polysemy-time-0.6.0.0:=
	>=dev-haskell/text-1.2.5:=
	>=dev-haskell/text-show-3.9.7:=
	>=dev-haskell/yaml-0.11.10.0:=
	dev-haskell/hw-kafka-client
	dev-haskell/pointfree
	>=dev-lang/ghc-9.2.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.6.3.0
"

S="${WORKDIR}/${P}"

src_configure() {
	cabal-mksetup
	haskell-cabal_src_configure
}
