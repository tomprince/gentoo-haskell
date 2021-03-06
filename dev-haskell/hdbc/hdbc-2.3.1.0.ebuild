# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="bin lib profile haddock hscolour hoogle"
inherit base haskell-cabal versionator

MY_PN="HDBC"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Haskell Database Connectivity"
HOMEPAGE="https://github.com/jgoerzen/hdbc/wiki"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="2"
KEYWORDS="~amd64 ~x86"
IUSE="mysql odbc postgres sqlite3 test"

RDEPEND=">=dev-haskell/convertible-1.0.10.0
		dev-haskell/mtl
		dev-haskell/text
		>=dev-haskell/time-1.1.3
		dev-haskell/utf8-string
		>=dev-lang/ghc-6.8.2
	"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( dev-haskell/hunit
			dev-haskell/quickcheck
			dev-haskell/testpack
		)
	"

DEPENDV="$(get_version_component_range 1-2)"
PDEPEND="mysql? ( dev-haskell/hdbc-mysql )
		odbc? ( =dev-haskell/hdbc-odbc-${DEPENDV}* )
		postgres? ( =dev-haskell/hdbc-postgresql-${DEPENDV}* )
		sqlite3? ( >=dev-haskell/hdbc-sqlite-${DEPENDV} )"

PATCHES=("${FILESDIR}/${PN}-2.3.1.0-fix-fbuildtests.patch"
	"${FILESDIR}/${PN}-2.3.1.0-relax-time-dep.patch"
	"${FILESDIR}/${PN}-2.3.1.0-ghc-7.4.patch")

S="${WORKDIR}/${MY_P}"

src_configure() {
	cabal_src_configure $(cabal_flag test buildtests)
}

src_test() {
	# default tests
	haskell-cabal_src_test || die "cabal test failed"

	# built custom tests
	"${S}/dist/build/runtests/runtests" || die "unit tests failed"
}

src_install() {
	cabal_src_install

	# if tests were enabled, make sure the unit test driver is deleted
	rm -f "${ED}/usr/bin/runtests"
}
