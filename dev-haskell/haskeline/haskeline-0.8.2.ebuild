# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: -examples

CABAL_HACKAGE_REVISION=3

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal

DESCRIPTION="A command-line interface for user input, written in Haskell"
HOMEPAGE="https://github.com/judah/haskeline"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="+terminfo"

RESTRICT=test # test requires example executable which does not work correctly

RDEPEND="
	|| ( dev-lang/ghc ( >=dev-haskell/process-1.0[profile?] <dev-haskell/process-1.7[profile?] ) )
	>=dev-haskell/stm-2.4:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-examples \
		$(cabal_flag terminfo terminfo)
}

CABAL_CORE_LIB_GHC_PV="8.10.6 8.10.7 9.0.2 9.2.4 9.2.5 9.2.6"
