# Maintainer: Jerome Gravel-Niquet <jeromegn@gmail.com>
# Contributor: Sharun Kumar <sharun@sharunkumar.com>

pkgname="flyctl-bin"
pkgver="0.3.203"
pkgrel="1"
pkgdesc="Command line tools for fly.io services"
arch=("x86_64")
url="https://fly.io"
license=("Apache")
depends=()
provides=("flyctl")
conflicts=("flyctl")
source=("$pkgname-$pkgver.tgz::https://github.com/superfly/flyctl/releases/download/v${pkgver}/flyctl_${pkgver}_Linux_x86_64.tar.gz")
sha256sums=('504af738f3921ebd4a013f0816f06e67b5f9810afded5fd54916e2017fa4632a')

package() {
    mkdir -p "$pkgdir/usr/bin"
    ln -s flyctl "$pkgdir/usr/bin/fly"
    install -m755 flyctl "$pkgdir/usr/bin"
}
