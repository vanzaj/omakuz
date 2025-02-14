#!/usr/bin/env bash
set -euxo pipefail

echo "=== Omakuz is for fresh Ubuntu 24.04+ installations only! ==="

if [ ! -f /etc/os-release ]; then
    echo "$(tput setaf 1)Error: Unable to determine OS. /etc/os-release file not found."
    echo "Installation stopped."
    exit 1
fi

. /etc/os-release

if [ "$ID" != "ubuntu" ] || [ $(echo "$VERSION_ID >= 24.04" | bc) != 1 ]; then
    echo "$(tput setaf 1)Error: OS requirement not met"
    echo "You are currently running: $ID $VERSION_ID"
    echo "OS required: Ubuntu 24.04 or higher"
    echo "Installation stopped."
    exit 1
fi

echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt update > /dev/null
sudo apt install -y git >/dev/null

echo "Cloning OmakuZ..."

export OMAKUZ_LOCAL='~/.local/share/omakuz'
rm -rf $OMAKUZ_LOCAL 
git clone https://github.com/vanzaj/omakuz.git $OMAKUZ_LOCAL > /dev/null

echo "Installation starting..."
. $OMAKUZ_LOCAL/install.sh
