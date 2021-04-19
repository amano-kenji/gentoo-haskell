# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -homebrew-openssl,-macports-openssl,-use-pkg-config

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="HsOpenSSL"
MY_P="${MY_PN}-${PV}"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="Partial OpenSSL binding for Haskell"
HOMEPAGE="https://github.com/vshabanov/HsOpenSSL"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="fast-bignum"

RDEPEND=">=dev-haskell/network-2.1:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag fast-bignum fast-bignum) \
		--flag=-homebrew-openssl \
		--flag=-macports-openssl \
		--flag=-use-pkg-config
}
