#!/bin/bash

# Installer of Dotfiles repository.
#
# Usage:
#   $ sh install.sh

. bin/colors.sh
. bin/functions.sh

if [ "$(id -u)" != "0" ]; then
    echo "${CRED}This script must be run as root!${CDEF}" 1>&2
    exit 1
fi

cd /tmp

