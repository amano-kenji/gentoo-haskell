# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: -cloud,-portable,threads:threaded

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Build system library, like Make, but more accurate dependencies"
HOMEPAGE="https://shakebuild.com"

# Tests are failing
# See: <https://github.com/ndmitchell/shake/issues/834>
RESTRICT="test"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="embed-files +threaded"

RDEPEND="
	>=dev-haskell/extra-1.6.19:=[profile?]
	dev-haskell/filepattern:=[profile?]
	>=dev-haskell/hashable-1.1.2.3:=[profile?]
	>=dev-haskell/heaps-0.3.6.1:=[profile?]
	dev-haskell/js-dgtable:=[profile?]
	dev-haskell/js-flot:=[profile?]
	dev-haskell/js-jquery:=[profile?]
	dev-haskell/primitive:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/unordered-containers-0.2.7:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	embed-files? (
		>=dev-haskell/file-embed-0.0.11:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		>=dev-haskell/quickcheck-2.0
	)
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-cloud \
		$(cabal_flag embed-files embed-files) \
		--flag=-portable \
		$(cabal_flag threaded threads)
}