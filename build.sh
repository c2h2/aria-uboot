#!/bin/sh

set -x
export CROSS_COMPILE=arm-linux-gnueabihf-
rm u-boot.*
rm MLO
make -j4 am335x_evm

md5sum MLO 
md5sum u-boot.img
