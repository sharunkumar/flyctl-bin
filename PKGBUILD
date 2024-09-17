# Maintainer: Jerome Gravel-Niquet <jeromegn@gmail.com>
# Contributor: Sharun Kumar <sharun@sharunkumar.com>

pkgname="flyctl-bin"
pkgver="0.3.4"
pkgrel="1"
pkgdesc="Command line tools for fly.io services"
arch=("x86_64")
url="https://fly.io"
license=("Apache")
depends=()
provides=("flyctl")
conflicts=("flyctl")
source=("$pkgname-$pkgver.tgz::https://github.com/superfly/flyctl/releases/download/v${pkgver}/flyctl_${pkgver}_Linux_x86_64.tar.gz")
sha256sums=('b188c90b086490624c4d01f3127a97dccb1285430de6e2c5fc8ab0f7f5fe3d7a')

package() {
    mkdir -p "$pkgdir/usr/bin"
    ln -s flyctl "$pkgdir/usr/bin/fly"
    install -m755 flyctl "$pkgdir/usr/bin"
}
