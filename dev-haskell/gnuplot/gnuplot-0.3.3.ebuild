# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="2D and 3D plots using gnuplot"
HOMEPAGE="http://www.haskell.org/haskellwiki/Gnuplot"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.6.1
		>=dev-haskell/cabal-1.2
		<dev-haskell/monoid-transformer-0.1
		=dev-haskell/time-1.1*
		<dev-haskell/utility-ht-0.1"

RDEPEND="${DEPEND}
		sci-visualization/gnuplot"

src_unpack() {
    unpack ${A}

    # Remove restrictions on array and containers
    sed -i -e 's/containers >= 0.1 && <0.3/containers >= 0.1/' \
                 "${S}/${PN}.cabal"
    sed -i -e 's/array >= 0.1 && <0.3/array >= 0.1/' \
                 "${S}/${PN}.cabal"
}


