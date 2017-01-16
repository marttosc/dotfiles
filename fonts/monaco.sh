#!/bin/sh

###
# This script install the Monaco font.
###

if [ "$(id -u)" != "0" ]; then
	echo "This script must be run as root!" 1>&2
	exit
fi

fdir=/usr/share/fonts/truetype/monaco-font/

# Create folder
mkdir -p $fdir

# Copy to the font folder
cp $(pwd)/ttf/monaco.ttf $fdir

# Update font cache
fc-cache -f -v

