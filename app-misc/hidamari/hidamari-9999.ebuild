# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..11} )

inherit git-r3 meson

DESCRIPTION="Video wallpaper for Linux."
EGIT_REPO_URI="https://github.com/jeffshee/hidamari.git"
HOMEPAGE="https://github.com/jeffshee/hidamari"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

