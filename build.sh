#!/bin/sh

set -ex
export CROSS_COMPILE=arm-linux-gnueabihf-
CORES=`getconf _NPROCESSORS_ONLN`

rm -rf deploy
rm MLO || true
rm u-boot.img || true


./change_to_SD_boot.sh
make clean
make -j${CORES} am335x_evm

mkdir -p deploy/sd
mv MLO deploy/sd
mv u-boot.img deploy/sd
cp uEnv/uEnv.txt deploy/sd

./change_to_eMMC_boot.sh

make clean
make -j${CORES} am335x_evm

mkdir -p deploy/emmc
mv MLO deploy/emmc
mv u-boot.img deploy/emmc
cp uEnv/uEnv.txt deploy/emmc


echo "DONE SD and eMMC compliation."


