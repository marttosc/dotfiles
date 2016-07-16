#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "${CRED}This script must be run as root!${CDEF}" 1>&2
    exit 1
fi

cd /tmp

package_exists() {
    if [ ! -z "$1" ]; then
        type "$1" &> /dev/null
    else
        return 0
    fi
}

pause() {
    if [ -z "$1" ]; then
        read -p "Press [Enter] to continue..."
    else
        read -p "$*"
    fi
}

update_system() {
    apt-get update
}

upgrade_system() {
    apt-get upgrade -y
}

