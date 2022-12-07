# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: -devel

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Predicate Abstraction-based Horn-Clause/Implication Constraint Solver"
HOMEPAGE="https://github.com/ucsd-progsys/liquid-fixpoint"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

CABAL_CHDEPS=(
	'megaparsec           >= 7.0.0 && < 9' 'megaparsec >= 7.0.0'
	'rest-rewrite >= 0.1.1 && < 0.2' 'rest-rewrite >= 0.1.1'
)

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/ansi-terminal:=[profile?]
	>=dev-haskell/ascii-progress-0.3:=[profile?]
	dev-haskell/async:=[profile?]
	dev-haskell/attoparsec:=[profile?]
	dev-haskell/boxes:=[profile?]
	dev-haskell/cereal:=[profile?]
	dev-haskell/cmdargs:=[profile?]
	dev-haskell/fgl:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/intern:=[profile?]
	>=dev-haskell/megaparsec-7.0.0:=[profile?]
	dev-haskell/parallel:=[profile?]
	dev-haskell/parser-combinators:=[profile?]
	>=dev-haskell/rest-rewrite-0.1.1:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/store:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4
	test? (
		>=dev-haskell/stm-2.4
		>=dev-haskell/tasty-0.10
		dev-haskell/tasty-ant-xml
		>=dev-haskell/tasty-hunit-0.9
		dev-haskell/tasty-quickcheck
		>=dev-haskell/tasty-rerun-1.1.12
	)
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-devel
}