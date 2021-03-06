# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.13

EAPI="4"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Components of paths."
HOMEPAGE="http://github.com/snoyberg/path-pieces"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="<dev-haskell/text-0.12
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/cabal-1.10
			=dev-haskell/file-location-0.4*
			>=dev-haskell/quickcheck-2.4.0.1
			=dev-haskell/hspec-0.9*
		)
		"

src_prepare() {
	sed -e 's@hspec >= 0.8 && < 0.9@hspec >= 0.8 \&\& < 0.10@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
	# upstream forgot to update the tests
	sed -e 's@Route@Path@g' \
		-i "${S}/test/main.hs"
}

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
