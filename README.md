Ariaboard U-Boot
================

Init from u-boot-2013.01.01-psp05.07.00.00 ti sdk.

This acts as BIOS for PC and works on Aria Board, Starts from $39 Texas Instruments Coretex-A8 Stamp Board.

For more info, plz visit: [Aria Board Homepage](http://ariaboard.com/) http://ariaboard.com/

Prerequisites Packages on x64 Ubuntu 12.04
==========================================
     sudo apt-get -y install libgphoto2-2:i386 libsane:i386 libgd2-xpm:i386 ia32-libs-multiarch uboot-mkimage lzop
     sudo apt-get -y install bc build-essential device-tree-compiler lsb-release lzma lzop fakeroot u-boot-tools ia32-libs ccache ia32-libs lzop

To Build
========
Install cross compiling for AM335x: http://ariaboard.com/wiki/Easy_Install_gcc_Cross_Compiler

Clone the source and 

    git clone https://github.com/c2h2/aria-uboot.git
    cd aria-uboot    
    ./build.sh

To Install to a SD Card
=======================
    ./install.sh

