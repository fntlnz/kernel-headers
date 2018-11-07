#!/usr/bin/env bash
set -euo pipefail

git=$(command -v git)
kernel_tree=$1
generic="asm-generic drm linux mtd rdma scsi sound video xen"
architectures="x86"

pushd $kernel_tree
kernel_tree_clean=$PWD
tag=$($git describe --abbrev=0 --tags)
make allnoconfig
make headers_install_all
popd

tagdir="$PWD/$tag"

mkdir $tagdir

pushd $tagdir
mkdir -p generic/include

for hd in $generic; do
	cp -a $kernel_tree_clean/usr/include/$hd generic/include/
done

for arch in $architectures; do
  mkdir -p $arch/include
  for hd in $generic; do
    ln -s ../../generic/include/$hd $arch/include/$hd
  done
  cp -a $kernel_tree_clean/usr/include/arch-$arch/asm $arch/include/asm
done
popd

