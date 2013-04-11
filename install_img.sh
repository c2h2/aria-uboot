#!/bin/sh

set -x

PART=/dev/sde1
DIR=/mnt

umount $DIR
set -e
mount $PART $DIR
cp MLO $DIR
cp u-boot.img $DIR
sync

MLO2=`md5sum $DIR/MLO`
UBOOT2=`md5sum $DIR/u-boot.img`

umount $DIR

echo "done"


