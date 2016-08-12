#!/bin/sh

###
# This script install the Monaco font.
###

if [ "$(id -u)" != "0" ]; then
	echo "This script must be run as root!" 1>&2
	exit
fi

url="http://usystem.googlecode.com/files/MONACO.TTF"
fname=${url##*/}
fdir=/usr/share/fonts/truetype/monaco-font/

# Create folder
mkdir -p $fdir

# Download font
wget -c $url

# Move to the font folder
mv $fname $fdir

# Update font cache
fc-cache -f -v

