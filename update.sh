#!/bin/bash

version=$1
if [ "$1" = "" ]; then
    echo "Usage: $0 VERSION_NUMBER"
    exit 1
fi
echo "version=$version"
sed -i.bak -e "s/^pkgver=.*/pkgver=$version/" PKGBUILD

declare -A archs=(
    # file suffix -> $CARCH
    ["x86_64"]="x86_64"
    ["armv6"]="armv6h"
    ["arm64"]="aarch64"
)

curl -sLO https://github.com/jesseduffield/lazygit/releases/download/v$version/checksums.txt
for arch in "${!archs[@]}"; do
    shasum=$(grep Linux_$arch checksums.txt | awk '{print $1}')
    sed -i.bak -e "s/^sha256sums_${archs[$arch]}=.*/sha256sums_${archs[$arch]}=('$shasum')/" PKGBUILD
done
rm -f checksums.txt

echo update PKGBUILD
rm -f PKGBUILD.bak
