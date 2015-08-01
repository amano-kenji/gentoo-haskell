# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999
#hackport: flags: -llvm

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Parallel rendering of raster images"
HOMEPAGE="http://gloss.ouroborus.net"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/gloss-1.9.4:=[profile?] <dev-haskell/gloss-1.9.5:=[profile?]
	>=dev-haskell/gloss-rendering-1.9.3:=[profile?] <dev-haskell/gloss-rendering-1.9.4:=[profile?]
	>=dev-haskell/repa-3.4:=[profile?] <dev-haskell/repa-3.5:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-llvm
}
