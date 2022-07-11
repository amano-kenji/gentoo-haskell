# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A fancy test runner, including support for golden tests"
HOMEPAGE="https://github.com/phile314/tasty-silver"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/ansi-terminal-0.6.2.1:=[profile?]
	dev-haskell/async:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	>=dev-haskell/process-extras-0.3:=[profile?]
	>=dev-haskell/regex-tdfa-1.2.0:=[profile?]
	>=dev-haskell/silently-1.2.5.1:=[profile?]
	>=dev-haskell/stm-2.4.2:=[profile?]
	dev-haskell/tagged:=[profile?]
	>=dev-haskell/tasty-1.4:=[profile?]
	dev-haskell/temporary:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/tasty-hunit )
"