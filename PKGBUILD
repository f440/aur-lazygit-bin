# Maintainer: f440 <freq440@gmail.com>

pkgname=lazygit-bin
pkgver=0.27.4
pkgrel=1
pkgdesc="simple terminal UI for git commands. Pre-compiled."
arch=('x86_64' 'armv6h' 'aarch64')
url="https://github.com/jesseduffield/lazygit"
license=('MIT')
depends=()
provides=('lazygit')
conflicts=('lazygit')

source_x86_64=("${pkgname/-bin/}-${pkgver}_Linux_x86_64.tar.gz::https://github.com/jesseduffield/lazygit/releases/download/v${pkgver}/${pkgname/-bin/}_${pkgver}_Linux_x86_64.tar.gz")
source_armv6h=("${pkgname/-bin/}-${pkgver}_Linux_armv6.tar.gz::https://github.com/jesseduffield/lazygit/releases/download/v${pkgver}/${pkgname/-bin/}_${pkgver}_Linux_armv6.tar.gz")
source_aarch64=("${pkgname/-bin/}-${pkgver}_Linux_armv6.tar.gz::https://github.com/jesseduffield/lazygit/releases/download/v${pkgver}/${pkgname/-bin/}_${pkgver}_Linux_aarch64.tar.gz")

sha256sums_x86_64=('ba206b49a08d537f64a71d1830e46383c65a33a4d810b156aec53306d0d2ea7b')
sha256sums_armv6h=('844e5173b9d8bf53e9fefeae321f45ec40f87a9d6f9270d1ec3974e42fa13ae3')
sha256sums_aarch64=('047b198e48c9eaa682c7d95883e80dfc8fed96f65431743293aa2b243c39ab78')

package() {
  install -Dm644 "LICENSE" "${pkgdir}/usr/share/licenses/lazygit/LICENSE"
  install -Dm644 "README.md" "${pkgdir}/usr/share/licenses/lazygit/README.md"
  install -Dm755 "lazygit" "${pkgdir}/usr/bin/lazygit"
}
