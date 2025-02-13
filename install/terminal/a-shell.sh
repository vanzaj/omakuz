[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp $OMAKUZ_LOCAL/configs/bashrc ~/.bashrc

source $OMAKUZ_LOCAL/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
cp $OMAKUZ_LOCAL/configs/inputrc ~/.inputrc
