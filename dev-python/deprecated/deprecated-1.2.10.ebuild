# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} pypy3 )
inherit distutils-r1

DESCRIPTION="Python @deprecated decorator to deprecate old API"
HOMEPAGE="https://github.com/tantale/deprecated"
SRC_URI="https://github.com/tantale/deprecated/archive/v${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-python/wrapt[${PYTHON_USEDEP}]"
BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

distutils_enable_tests pytest
