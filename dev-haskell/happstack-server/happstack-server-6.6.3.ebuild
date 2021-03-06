# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.13

EAPI="4"

CABAL_FEATURES="bin lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Web related tools and services."
HOMEPAGE="http://happstack.com"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/base64-bytestring-0.1*
		<dev-haskell/blaze-html-0.5
		>=dev-haskell/hslogger-1.0.2
		=dev-haskell/hsopenssl-0.10*
		dev-haskell/html
		=dev-haskell/monad-control-0.3*
		>=dev-haskell/mtl-2
		=dev-haskell/network-2.3*
		<dev-haskell/parsec-4
		<dev-haskell/sendfile-0.8
		<dev-haskell/text-0.12
		dev-haskell/time
		<dev-haskell/transformers-0.3
		=dev-haskell/transformers-base-0.4*
		<dev-haskell/utf8-string-0.4
		dev-haskell/xhtml
		dev-haskell/zlib
		>=dev-lang/ghc-6.10.1"

DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
