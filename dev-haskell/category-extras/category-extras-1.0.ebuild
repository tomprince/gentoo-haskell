# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.14

EAPI="3"

CABAL_FEATURES="lib profile"
inherit haskell-cabal

DESCRIPTION="A meta-package documenting various packages inspired by category theory"
HOMEPAGE="http://comonad.com/reader/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/adjunctions
		dev-haskell/bifunctors
		dev-haskell/categories
		dev-haskell/comonad
		dev-haskell/comonad-extras
		dev-haskell/comonad-transformers
		dev-haskell/comonads-fd
		dev-haskell/contravariant
		dev-haskell/distributive
		dev-haskell/either
		dev-haskell/free
		dev-haskell/groupoids
		dev-haskell/kan-extensions
		dev-haskell/keys
		dev-haskell/monad-products
		dev-haskell/pointed
		dev-haskell/profunctor-extras
		dev-haskell/profunctors
		dev-haskell/recursion-schemes
		dev-haskell/reducers
		dev-haskell/representable-functors
		dev-haskell/representable-profunctors
		dev-haskell/semigroupoid-extras
		dev-haskell/semigroupoids
		dev-haskell/semigroups
		dev-haskell/void
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"