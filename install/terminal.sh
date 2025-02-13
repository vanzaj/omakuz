sudo apt install -y curl git unzip wget gpg

for installer in $OMAKUZ_LOCAL/install/terminal/*.sh; do source $installer; done
