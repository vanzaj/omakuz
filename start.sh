set -euo pipefail

source hello_omakuz.sh

echo "=> Omakuz is for fresh Ubuntu 24.04+ installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt update >/dev/null
sudo apt install -y git >/dev/null

echo "Cloning Omakub..."
local_omakuz='~/.local/share/omakuz'
rm -rf $local_omakuz 
git clone https://github.com/vanzaj/omakuz.git $local_omakuz > /dev/null
if [[ $OMAKUZ_REF != "master" ]]; then
	cd $local_omakuz
	git fetch origin "${OMAKUZ_REF:-stable}" && git checkout "${OMAKUZ_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source $local_omakuz/install.sh
