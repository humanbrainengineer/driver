# driver
# bcm4312 Linux driver

# download tools.

   #su -
 dnf -y install b43-fwcutter wget

# download the bcm4312 linux driver.

wget http://downloads.openwrt.org/sources/broadcom-wl-4.150.10.5.tar.bz2

#tar the firmware to the  /lib/firmware.
tar -xjvf broadcom-wl-4.150.10.5.tar.bz2
cd broadcom-wl-4.150.10.5/driver
b43-fwcutter -w /lib/firmware/ wl_apsta_mimo.o

#reload the 43 kernel module.

modprobe -r b43
modprobe b43
