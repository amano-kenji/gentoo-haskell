# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="test-suite"
inherit bash-completion-r1 haskell-cabal

DESCRIPTION="The command-line interface for Cabal and Hackage"
HOMEPAGE="http://www.haskell.org/cabal/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="+network-uri +noprefs"

RESTRICT=test

RDEPEND=">=dev-haskell/async-2.0:= <dev-haskell/async-3:=
	>=dev-haskell/base16-bytestring-0.1.1:= <dev-haskell/base16-bytestring-0.2:=
	>=dev-haskell/bytestring-builder-0.10:= <dev-haskell/bytestring-builder-1:=
	>=dev-haskell/cabal-1.24.2:= <dev-haskell/cabal-1.25:=
	>=dev-haskell/cryptohash-sha256-0.11:= <dev-haskell/cryptohash-sha256-0.12:=
	>=dev-haskell/hackage-security-0.5.2.2:= <dev-haskell/hackage-security-0.6:=
	>=dev-haskell/hashable-1.0:= <dev-haskell/hashable-2:=
	>=dev-haskell/http-4000.1.5:= <dev-haskell/http-4000.4:=
	>=dev-haskell/mtl-2.0:= <dev-haskell/mtl-3:=
	>=dev-haskell/old-time-1:= <dev-haskell/old-time-1.2:=
	>=dev-haskell/random-1:= <dev-haskell/random-1.2:=
	>=dev-haskell/stm-2.0:= <dev-haskell/stm-3:=
	>=dev-haskell/tar-0.5.0.3:= <dev-haskell/tar-0.6:=
	>=dev-haskell/zlib-0.5.3:= <dev-haskell/zlib-0.7:=
	>=dev-lang/ghc-7.4.1:=
	network-uri? ( >=dev-haskell/network-2.6:= <dev-haskell/network-2.7:=
			>=dev-haskell/network-uri-2.6:= <dev-haskell/network-uri-2.7:= )
	!network-uri? ( >=dev-haskell/network-2.4:= <dev-haskell/network-2.6:= )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/quickcheck-2.8.2
		dev-haskell/regex-posix
		dev-haskell/tagged
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck
		!network-uri? ( <dev-haskell/network-uri-2.6 ) )
"

src_prepare() {
	default
	if use noprefs; then
		epatch "${FILESDIR}/${PN}"-1.24.0.0-nopref.patch
	fi

	# no chance to link to -threaded on ppc64, alpha and others
	# who use UNREG, not only ARM
	if ! ghc-supports-threaded-runtime; then
		cabal_chdeps '-threaded' ' '
	fi
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network-uri network-uri)
}

src_install() {
	haskell-cabal_src_install

	dobashcomp "${S}/bash-completion/cabal"

	# fixup perms in such an an awkward way
	mv "${ED}/usr/share/man/man1/cabal.1" "${S}/cabal.1" || die
	doman "${S}/cabal.1"
}
