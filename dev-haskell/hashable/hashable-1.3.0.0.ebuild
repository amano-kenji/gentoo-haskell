# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: sse41:cpu_flags_x86_sse4_1,sse2:cpu_flags_x86_sse2,integer-gmp:gmp

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A class for types that can be converted to a hash value"
HOMEPAGE="https://github.com/tibbe/hashable"
SRC_URI="
	https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/2.cabal -> ${PF}.cabal"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+cpu_flags_x86_sse2 cpu_flags_x86_sse4_1 examples"

RDEPEND=">=dev-haskell/text-0.12:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.12
	test? ( dev-haskell/hunit
		>=dev-haskell/quickcheck-2.4.0.1
		>=dev-haskell/random-1.0 <dev-haskell/random-1.2
		>=dev-haskell/test-framework-0.3.3
		dev-haskell/test-framework-hunit
		>=dev-haskell/test-framework-quickcheck2-0.2.9 )
"

src_prepare() {
	default

	cp "${DISTDIR}/${PF}.cabal" "${S}/${PN}.cabal" || die
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=integer-gmp \
		$(cabal_flag examples examples) \
		$(cabal_flag cpu_flags_x86_sse2 sse2) \
		$(cabal_flag cpu_flags_x86_sse4_1 sse41)
}