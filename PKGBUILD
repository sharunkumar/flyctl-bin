# Maintainer: Jerome Gravel-Niquet <jeromegn@gmail.com>
# Contributor: Sharun Kumar <sharun@sharunkumar.com>

pkgname="flyctl-bin"
pkgver="0.4.15"
pkgrel="1"
pkgdesc="Command line tools for fly.io services"
arch=("x86_64")
url="https://fly.io"
license=("Apache")
depends=()
provides=("flyctl")
conflicts=("flyctl")
source=("$pkgname-$pkgver.tgz::https://github.com/superfly/flyctl/releases/download/v${pkgver}/flyctl_${pkgver}_Linux_x86_64.tar.gz")
sha256sums=('731b75145cb95ffc0a3daa8e3fc78de0e3b5d3589fad0bc95a897175a8640208')

package() {
    mkdir -p "$pkgdir/usr/bin"
    ln -s flyctl "$pkgdir/usr/bin/fly"
    install -m755 flyctl "$pkgdir/usr/bin"
}
