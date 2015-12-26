# Driver
# Bcm4312 Linux driver

# Download tools.

   #su -
 dnf -y install b43-fwcutter wget

# Download the bcm4312 linux driver.

wget http://downloads.openwrt.org/sources/broadcom-wl-4.150.10.5.tar.bz2

#Tar the firmware to the  /lib/firmware.
tar -xjvf broadcom-wl-4.150.10.5.tar.bz2
cd broadcom-wl-4.150.10.5/driver
b43-fwcutter -w /lib/firmware/ wl_apsta_mimo.o

# Reload the 43 kernel module.

modprobe -r b43
modprobe b43
service network restart  
reboot
