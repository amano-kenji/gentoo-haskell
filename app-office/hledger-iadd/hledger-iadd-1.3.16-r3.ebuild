# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A terminal UI as drop-in replacement for hledger add"
HOMEPAGE="https://github.com/hpdeifel/hledger-iadd#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/brick-0.27:=[profile?]
	>=dev-haskell/free-4.12.4:=[profile?]
	>=dev-haskell/hledger-lib-1.23:=[profile?] <dev-haskell/hledger-lib-1.27:=[profile?]
	>=dev-haskell/megaparsec-7.0:=[profile?] <dev-haskell/megaparsec-9.3:=[profile?]
	dev-haskell/microlens:=[profile?]
	dev-haskell/microlens-th:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/text-zipper-0.10:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-haskell/vty-5.4:=[profile?]
	dev-haskell/xdg-basedir:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( dev-haskell/hspec
		dev-haskell/quickcheck )
"

src_prepare() {
	default

	cabal_chdeps \
		'megaparsec >= 7.0 && <9.2' 'megaparsec >= 7.0' \
		'hledger-lib >= 1.23 && < 1.24' 'hledger-lib >= 1.23'
}