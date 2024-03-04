# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: -lib-werror

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Sharing code for serialization between binary and cereal"
HOMEPAGE="https://github.com/ekmett/bytes"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/binary-orphans-1.0.1:=[profile?] <dev-haskell/binary-orphans-1.1:=[profile?]
	>=dev-haskell/cereal-0.5.2:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/hashable-1.0.1.1:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-haskell/scientific-0.0:=[profile?] <dev-haskell/scientific-1:=[profile?]
	>=dev-haskell/text-0.2:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-haskell/transformers-compat-0.6.5:=[profile?] <dev-haskell/transformers-compat-1:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/void-0.6:=[profile?] <dev-haskell/void-1:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-lib-werror
}
