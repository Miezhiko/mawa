# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="MIGMA SHELTER"
HOMEPAGE="https://github.com/Miezhiko/Shelter"

inherit cmake

CMAKE_MIN_VERSION=3.20.0
CMAKE_MAKEFILE_GENERATOR=emake

if [[ ${PV} = 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/Miezhiko/Shelter.git"
	EGIT_BRANCH="mawa"
else
	SRC_URI="https://github.com/Miezhiko/Shelter/archive/v${PV}.tar.gz"
	S="${WORKDIR}/Shelter-${PV}"
fi

RESTRICT="mirror test"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+lto"

RDEPEND=""
DEPEND="${RDEPEND}"

src_configure() {
	local mycmakeargs=(
		-DUSE_LTO=$(usex lto TRUE FALSE)
	)
	cmake_src_configure
}

src_install() {
	dobin "${BUILD_DIR}/shelter"
}
