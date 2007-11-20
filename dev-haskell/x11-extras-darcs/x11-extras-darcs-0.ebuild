# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

CABAL_FEATURES="lib"

inherit haskell-cabal darcs autotools

DESCRIPTION="Missing bindings to the X11 graphics library"
HOMEPAGE="http://darcs.haskell.org/~sjanssen/X11-extras"
LICENSE="BSD"
SLOT="0"

KEYWORDS="~x86 ~amd64"

IUSE=""

DEPEND=">=dev-lang/ghc-6.4
	|| (>=dev-haskell/x11-1.2 dev-haskell/x11-darcs)
	!dev-haskell/x11-extras"

EDARCS_REPOSITORY="http://code.haskell.org/X11-extras"
EDARCS_GET_CMD="get --partial"

src_compile() {
	eautoreconf
	cabal_src_compile
}
