set -euo pipefail

source hello_omakuz.sh

echo "=> Omakuz is for fresh Ubuntu 24.04+ installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt update >/dev/null
sudo apt install -y git >/dev/null

echo "Cloning Omakub..."

export OMAKUZ_LOCAL='~/.local/share/omakuz'

rm -rf $OMAKUZ_LOCAL 
git clone https://github.com/vanzaj/omakuz.git $local_omakuz > /dev/null
if [[ $OMAKUZ_BRANCH != "main" ]]; then
	cd $OMAKUZ_LOCAL
	git fetch origin "${OMAKUZ_BRANCH:-stable}" && git checkout "${OMAKUZ_BRANCH:-stable}"
	cd -
fi

echo "Installation starting..."
source $OMAKUZ_LOCAL/install.sh
