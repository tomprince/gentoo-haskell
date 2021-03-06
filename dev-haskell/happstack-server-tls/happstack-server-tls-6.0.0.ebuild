# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.15

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="extend happstack-server with https:// support (TLS/SSL)"
HOMEPAGE="http://www.happstack.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/happstack-server-6.6*
		=dev-haskell/hslogger-1.1*
		=dev-haskell/hsopenssl-0.10*
		=dev-haskell/network-2.3*
		=dev-haskell/sendfile-0.7*
		=dev-haskell/time-1.4*
		>=dev-lang/ghc-6.10.1
		>=dev-libs/crypto++-5.6.1-r3
		dev-libs/openssl"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

CABAL_EXTRA_CONFIGURE_FLAGS="--extra-lib-dirs="${EPREFIX}"/usr/$(get_libdir) \
		--extra-include-dirs="${EPREFIX}"/usr/include/crypto++"

src_prepare() {
	sed -e 's@cryptopp@crypto++@g' \
		-i "${S}/${PN}.cabal" || die "Could not correct crypto++ library name"
}
