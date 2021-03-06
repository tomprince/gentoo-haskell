# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="High-level file download based on URLs"
HOMEPAGE="http://code.haskell.org/~dons/code/download-curl"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/curl
		dev-haskell/feed
		<dev-haskell/tagsoup-0.13
		dev-haskell/xml
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.0"

src_prepare() {
	sed -e 's@tagsoup >= 0.8 && < 0.11@tagsoup >= 0.8 \&\& < 0.13@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependency on tagsoup"
}
