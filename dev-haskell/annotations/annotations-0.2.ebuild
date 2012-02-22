# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.15

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Annotations"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Constructing, analyzing and destructing annotated trees"
HOMEPAGE="http://hackage.haskell.org/package/Annotations"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-1.1 <dev-haskell/mtl-2.1
		>=dev-haskell/multirec-0.4 <dev-haskell/multirec-0.8
		>=dev-haskell/parsec-3.0 <dev-haskell/parsec-3.2
		>=dev-lang/ghc-6.10.4"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

S="${WORKDIR}/${MY_P}"