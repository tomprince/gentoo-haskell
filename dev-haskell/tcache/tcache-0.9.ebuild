# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

MY_PN="TCache"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A Transactional cache with user-defined persistence"
HOMEPAGE="http://hackage.haskell.org/package/tcache"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/stm-2
		dev-haskell/text
		=dev-haskell/transformers-0.2*
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	# TCache.cabal contains illegal chacacters, they crash haddock.
	# simply remove them
	iconv -c --from-code=UTF-8 --to-code=ascii "${S}/TCache.cabal" \
	  -o "${S}/TCache.cabal"
}