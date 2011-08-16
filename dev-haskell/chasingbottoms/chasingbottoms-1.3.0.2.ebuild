# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

MY_PN="ChasingBottoms"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="For testing partial and infinite values."
HOMEPAGE="http://hackage.haskell.org/package/chasingbottoms"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/mtl-2.1
		>=dev-haskell/quickcheck-2.1
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

S="${WORKDIR}/${MY_P}"