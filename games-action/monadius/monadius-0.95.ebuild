# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.14

EAPI="3"

CABAL_FEATURES="bin"
inherit base haskell-cabal

MY_PN="Monadius"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="2-D arcade scroller"
HOMEPAGE="http://www.geocities.jp/takascience/haskell/monadius_en.html"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6
		=dev-haskell/glut-2.2*
		=dev-haskell/opengl-2.4*
		>=dev-lang/ghc-7.0.1"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}/${PN}"-0.95-ghc-7.4.1-rc1.patch
	"${FILESDIR}/${PN}"-0.95-OpenGL-2.4.patch)