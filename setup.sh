#!/bin/bash

# List of packages to install
PACKAGES="
ripgrep
neovim
curl
wget
git
openssh
noto-fonts
less
"

if [ -f "/etc/os-release" ]; then
    OS_ID=$(cat "/etc/os-release" | grep "^ID" | awk -F "=" '{ print $NF }')
fi

[ -z "$OS_ID" ] && printf "ID couldn't parsed from /etc/os-release. Exiting...\n" && exit 1

if [ "$OS_ID" == "arch" ]; then
    sudo pacman -S $PACKAGES
fi
