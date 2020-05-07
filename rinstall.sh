echo "***LOCAL md5sum***"
md5sum MLO 
md5sum u-boot.img


echo "***REMOTE EXISTING md5sum***"
ssh root@$1 md5sum /boot/uboot/MLO
ssh root@$1 md5sum /boot/uboot/u-boot.img

echo "***BACKING UP OLD IMAGE***"
ssh root@$1 cp /boot/uboot/MLO  /boot/uboot/MLO.old
ssh root@$1 cp /boot/uboot/u-boot.img /boot/uboot/u-boot.img.old

echo "***COPYING to REMOTE $1"
scp deploy/emmc/* root@$1:/boot/uboot/


echo "***REMOTE NEW md5sum***"
ssh root@$1 md5sum /boot/uboot/MLO
ssh root@$1 md5sum /boot/uboot/u-boot.img

echo "***REBOOTING***"
ssh root@$1 reboot
