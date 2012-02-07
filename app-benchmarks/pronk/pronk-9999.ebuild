# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.15

EAPI=4

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
EGIT_REPO_URI="git://github.com/bos/pronk.git"
inherit base git-2 haskell-cabal

DESCRIPTION="A library and command line app for HTTP load testing"
HOMEPAGE="https://github.com/bos/pronk"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson
		dev-haskell/case-insensitive
		>=dev-haskell/cmdargs-0.7
		dev-haskell/conduit
		>=dev-haskell/criterion-0.6.0.0
		dev-haskell/deepseq
		>=dev-haskell/hashable-1.1.2.0
		dev-haskell/hastache
		>=dev-haskell/http-conduit-1.2
		dev-haskell/http-types
		dev-haskell/lifted-base
		dev-haskell/network
		>=dev-haskell/statistics-0.10.0.0
		dev-haskell/text
		>=dev-haskell/text-format-0.3.0.4
		dev-haskell/time
		>=dev-haskell/transformers-0.2.2
		>=dev-haskell/unix-compat-0.2.2
		>=dev-haskell/unordered-containers-0.1.4.0
		dev-haskell/vector
		dev-haskell/vector-algorithms
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

PATCHES=("${FILESDIR}"/${PN}-0.1.0-fix-build.patch)