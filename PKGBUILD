# Maintainer: Jerome Gravel-Niquet <jeromegn@gmail.com>
# Contributor: Sharun Kumar <sharun@sharunkumar.com>

pkgname="flyctl-bin"
pkgver="0.2.124"
pkgrel="1"
pkgdesc="Command line tools for fly.io services"
arch=("x86_64")
url="https://fly.io"
license=("Apache")
depends=()
provides=("flyctl")
conflicts=("flyctl")
source=("$pkgname-$pkgver.tgz::https://github.com/superfly/flyctl/releases/download/v${pkgver}/flyctl_${pkgver}_Linux_x86_64.tar.gz")
sha256sums=('77e6ba5a9d95ff817d27c4528fc8154dfdf9fafd8717c33161884aac2521f33d')

package() {
    mkdir -p "$pkgdir/usr/bin"
    ln -s flyctl "$pkgdir/usr/bin/fly"
    install -m755 flyctl "$pkgdir/usr/bin"
}
