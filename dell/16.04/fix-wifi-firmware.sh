#!/bin/sh

###
# This script fix the wireless problem on a Dell Inspiron 5557.
###

if [ "$(id -u)" != "0" ]; then
	echo "This script must be run as root!" 1>&2
	exit 1
fi

cd /tmp

mkdir -p /lib/firmware/ath10k/QCA6174/hw3.0/

mkdir /tmp/qca6174/

cp /lib/firmware/ath10k/QCA6174/hw3.0/* /tmp/qca6174/

rm /lib/firmware/ath10k/QCA6174/hw3.0/* 2>/dev/null

wget -O board.bin https://github.com/FireWalkerX/ath10k-firmware/blob/7e56cbb94182a2fdab110cf5bfeded8fd1d44d30/QCA6174/hw3.0/board-2.bin?raw=true

cp board.bin /lib/firmware/ath10k/QCA6174/hw3.0/board.bin

wget -O firmware-4.bin https://github.com/FireWalkerX/ath10k-firmware/blob/7e56cbb94182a2fdab110cf5bfeded8fd1d44d30/QCA6174/hw3.0/firmware-4.bin_WLAN.RM.2.0-00180-QCARMSWPZ-1?raw=true

cp firmware-4.bin /lib/firmware/ath10k/QCA6174/hw3.0/firmware-4.bin

chmod +x /lib/firmware/ath10k/QCA6174/hw3.0/*

echo "Reboot your system!"

