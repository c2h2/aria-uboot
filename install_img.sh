#!/bin/sh

set -x

PART=$1
DIR=/mnt

umount $DIR
set -e
mount $PART $DIR
cp deploy/sd/* $DIR

mkdir -p $DIR/emmc
cp deploy/emmc/* $DIR/emmc

sync

#MLO2=`md5sum $DIR/MLO`
#UBOOT2=`md5sum $DIR/u-boot.img`

umount $DIR

echo "Done install to $1"
