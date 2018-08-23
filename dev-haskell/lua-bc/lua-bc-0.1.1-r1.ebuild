# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Lua bytecode parser"
HOMEPAGE="https://github.com/GaloisInc/lua-bc"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/data-binary-ieee754-0.4:=[profile?] <dev-haskell/data-binary-ieee754-0.5:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

PATCHES=(
	"${FILESDIR}"/${P}-ghc84.patch
)

src_prepare() {
	default

	cabal_chdeps \
		'vector                   >=0.10 && <0.12' 'vector                   >=0.10' \
		'base                     >=4.8  && <4.10' 'base                     >=4.8'
}
