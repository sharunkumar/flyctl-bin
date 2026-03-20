# Maintainer: Jerome Gravel-Niquet <jeromegn@gmail.com>
# Contributor: Sharun Kumar <sharun@sharunkumar.com>

pkgname="flyctl-bin"
pkgver="0.4.25"
pkgrel="1"
pkgdesc="Command line tools for fly.io services"
arch=("x86_64")
url="https://fly.io"
license=("Apache")
depends=()
provides=("flyctl")
conflicts=("flyctl")
source=("$pkgname-$pkgver.tgz::https://github.com/superfly/flyctl/releases/download/v${pkgver}/flyctl_${pkgver}_Linux_x86_64.tar.gz")
sha256sums=('333f4e062de0ae038eb45900717a2e87f2e5bd9e26cd40b224251266402488ab')

package() {
    mkdir -p "$pkgdir/usr/bin"
    ln -s flyctl "$pkgdir/usr/bin/fly"
    install -m755 flyctl "$pkgdir/usr/bin"
}
