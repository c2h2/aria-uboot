#!/bin/sh

set -x

PART=$1
DIR=/mnt

umount $DIR
set -e
mount $PART $DIR
cp MLO $DIR
cp u-boot.img $DIR
cp uEnv/uEnv.txt $DIR
sync

MLO2=`md5sum $DIR/MLO`
UBOOT2=`md5sum $DIR/u-boot.img`

umount $DIR

echo "done"


