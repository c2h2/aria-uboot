#!/bin/sh

set -x
export CROSS_COMPILE=arm-linux-gnueabihf-
CORES=`getconf _NPROCESSORS_ONLN`

rm u-boot.*
rm MLO
make clean
make -j${CORES} am335x_evm

md5sum MLO 
md5sum u-boot.img
