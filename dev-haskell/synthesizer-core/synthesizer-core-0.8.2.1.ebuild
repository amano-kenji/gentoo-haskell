# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6
#hackport: flags: -optimizeadvanced

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Audio signal processing coded in Haskell: Low level part"
HOMEPAGE="http://www.haskell.org/haskellwiki/Synthesizer"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/event-list-0.1:=[profile?] <dev-haskell/event-list-0.2:=[profile?]
	>=dev-haskell/explicit-exception-0.1.6:=[profile?] <dev-haskell/explicit-exception-0.2:=[profile?]
	>=dev-haskell/non-empty-0.2:=[profile?] <dev-haskell/non-empty-0.4:=[profile?]
	>=dev-haskell/non-negative-0.1:=[profile?] <dev-haskell/non-negative-0.2:=[profile?]
	>=dev-haskell/numeric-prelude-0.4.2:=[profile?] <dev-haskell/numeric-prelude-0.5:=[profile?]
	>=dev-haskell/numeric-quest-0.1:=[profile?] <dev-haskell/numeric-quest-0.3:=[profile?]
	>=dev-haskell/quickcheck-1:2=[profile?] <dev-haskell/quickcheck-3:2=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-2.0:=[profile?]
	>=dev-haskell/sample-frame-np-0.0.4:=[profile?] <dev-haskell/sample-frame-np-0.1:=[profile?]
	>=dev-haskell/semigroups-0.1:=[profile?] <dev-haskell/semigroups-1.0:=[profile?]
	>=dev-haskell/sox-0.1:=[profile?] <dev-haskell/sox-0.3:=[profile?]
	>=dev-haskell/storable-record-0.0.1:=[profile?] <dev-haskell/storable-record-0.1:=[profile?]
	>=dev-haskell/storable-tuple-0.0.1:=[profile?] <dev-haskell/storable-tuple-0.1:=[profile?]
	>=dev-haskell/storablevector-0.2.5:=[profile?] <dev-haskell/storablevector-0.3:=[profile?]
	>=dev-haskell/utility-ht-0.0.14:=[profile?] <dev-haskell/utility-ht-0.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/non-empty-0.2.1 <dev-haskell/non-empty-0.4 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-optimizeadvanced
}
