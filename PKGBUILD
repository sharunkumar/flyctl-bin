# Maintainer: Jerome Gravel-Niquet <jeromegn@gmail.com>

pkgname="flyctl-bin"
pkgver="0.2.33"
pkgrel="1"
pkgdesc="Command line tools for fly.io services"
arch=("x86_64")
url="https://fly.io"
license=("Apache")
depends=()
provides=("flyctl")
conflicts=("flyctl")
source=("$pkgname-$pkgver.tgz::https://github.com/superfly/flyctl/releases/download/v${pkgver}/flyctl_${pkgver}_Linux_x86_64.tar.gz")
sha256sums=('7b576c315cf0af8b0619d5d5120f748223419a09d2ddf0b8debb5cef53b62b1c')

package() {
    mkdir -p "$pkgdir/usr/bin"
    ln -s flyctl "$pkgdir/usr/bin/fly"
    install -m755 flyctl "$pkgdir/usr/bin"
}
