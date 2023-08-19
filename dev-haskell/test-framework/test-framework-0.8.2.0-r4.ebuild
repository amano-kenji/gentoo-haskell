# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_HACKAGE_REVISION=10

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal
RESTRICT="test" # tests are missing

DESCRIPTION="Framework for running and organising tests, with HUnit and QuickCheck support"
HOMEPAGE="https://haskell.github.io/test-framework/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/ansi-terminal-0.4.0:=[profile?] <dev-haskell/ansi-terminal-1.1:=[profile?]
	>=dev-haskell/ansi-wl-pprint-0.5.1:=[profile?] <dev-haskell/ansi-wl-pprint-1.1:=[profile?]
	>=dev-haskell/hostname-1.0:=[profile?] <dev-haskell/hostname-1.1:=[profile?]
	>=dev-haskell/old-locale-1.0:=[profile?] <dev-haskell/old-locale-1.1:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-haskell/regex-posix-0.72:=[profile?] <dev-haskell/regex-posix-0.97:=[profile?]
	>=dev-haskell/xml-1.3.5:=[profile?] <dev-haskell/xml-1.4:=[profile?]
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
"
#	test? (
#		>=dev-haskell/hunit-1.2
#		>=dev-haskell/libxml-0.1.1
#		>=dev-haskell/quickcheck-2.3 <dev-haskell/quickcheck-2.15
#		>=dev-haskell/semigroups-0.18
#	)
