#!/system/bin/sh
#
# Create device node for GPS if Ericsson modem is present
# else stop ril-deamon.
#
if [ -e /sys/class/usb/cdc-wdm0 ]; then
   mknod  -m 666 /dev/cdc-wdm0 c 180 176
else
   stop ril-daemon
fi

