# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generate Haskell bindings for GObject Introspection capable libraries"
HOMEPAGE="https://github.com/haskell-gi/haskell-gi"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.13:=[profile?]
	>=dev-haskell/cabal-1.24:=[profile?]
	>=dev-haskell/haskell-gi-base-0.23.0:=[profile?] <dev-haskell/haskell-gi-base-0.24:=[profile?]
	>=dev-haskell/mtl-2.2:=[profile?]
	dev-haskell/pretty-show:=[profile?]
	>=dev-haskell/regex-tdfa-1.2:=[profile?]
	dev-haskell/safe:=[profile?]
	>=dev-haskell/text-1.0:=[profile?]
	dev-haskell/xdg-basedir:=[profile?]
	>=dev-haskell/xml-conduit-1.3:=[profile?]
	>=dev-lang/ghc-8.0.1:=
	dev-libs/glib:2
	dev-libs/gobject-introspection
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0
	virtual/pkgconfig
	test? ( >=dev-haskell/doctest-0.8 )
"
