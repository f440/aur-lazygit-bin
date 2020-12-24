#!/bin/bash

version=$1
if [ "$1" = "" ]; then
    echo "Usage: $0 VERSION_NUMBER"
    exit 1
fi
echo "version=$version"

curl -sLO https://github.com/jesseduffield/lazygit/releases/download/v$version/checksums.txt
shasum=$(grep Linux_x86_64 checksums.txt | awk '{print $1}')
echo shasum=$shasum
rm -f checksums.txt

sed -i.bak -e "s/^pkgver=.*/pkgver=$version/" -e "s/^sha256sums=.*/sha256sums=('$shasum')/" PKGBUILD
echo update PKGBUILD
rm -f PKGBUILD.bak
