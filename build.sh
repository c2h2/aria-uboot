#!/bin/sh

set -ex
export CROSS_COMPILE=arm-linux-gnueabihf-
CORES=`getconf _NPROCESSORS_ONLN`

rm -rf deploy
rm MLO || true
rm u-boot.img || true

make clean
make -j${CORES} am335x_evm

mkdir -p deploy/sd
cp MLO deploy/sd
cp u-boot.img deploy/sd
cp uEnv/uEnv.txt deploy/sd

mkdir -p deploy/emmc
cp MLO deploy/emmc
cp u-boot.img deploy/emmc
cp uEnv/uEnv.txt deploy/emmc


echo "DONE SD and eMMC compliation."


