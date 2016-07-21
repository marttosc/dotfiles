#!/bin/bash

# Installer of Dotfiles repository.
#
# Usage:
#   $ sh install.sh

. bin/colors.sh
. bin/functions.sh

echo -e "${CCYA}Welcome! I'm Dotfiles installer!${CDEF}\n\n"

# Wheher software sources are updated.

read -p "Are your software sources updated? [Y/n] " q_soft_src_upd

case $q_soft_src_upd in
	[Yy])
		;;
	* )
		echo -e "\nOpen ${CGRE}Software & Updates${CDEF}, go to ${CGRE}Other Software${CDEF} tab and make sure that ${CGRE}Canonical Partners${CDEF} is checked.\n"

		read -p "Can I continue? Press [Enter] "
		;;
esac

# Update and upgrade the system.

echo -e "\n${CPUR}Preparing to update your system...${CDEF}\n"

update_system

echo -e "\n${CPUR}Preparing to upgrade your system...${CDEF}\n"

upgrade_system

# Install essential softwares.

echo -e "\n${CPUR}"
echo -e "I'll install the following packages:\n"
echo -e "\t* ${CGRE}Ubuntu Restricted Extras (${CWHI}ubuntu-restricted-extras${CGRE})${CPUR};"
echo -e "\t* ${CGRE}VLC (${CWHI}vlc${CGRE})${CPUR};"
echo -e "\t* ${CGRE}Git (${CWHI}git${CGRE})${CPUR};"
echo -e "\t* ${CGRE}Synaptic (${CWHI}synaptic${CGRE})${CPUR};"
echo -e "\t* ${CGRE}File Compression Libs (${CWHI}unace unrar zip unzip xz-utils p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract${CGRE})${CPUR};"
echo -e "\t* ${CGRE}Python Software Properties (${CWHI}python-software-properties${CGRE})${CPUR};"
echo -e "\t* ${CGRE}FileZilla (${CWHI}filezilla${CGRE})${CPUR};"
echo -e "${CDEF}\n"

apt-get install -y ubuntu-restricted-extras vlc synaptic unace unrar zip unzip xz-utils p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract python-software-properties filezilla

