#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 </dev/ttyUSB?>" > /dev/stderr
	exit 1
fi
USBDEVICE=$1
FIRMWARE=FirmwareImages/BUSSide-16-12-2019.bin

esptool --port $USBDEVICE write_flash 0x00000 $FIRMWARE
