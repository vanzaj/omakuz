# Configure the bash shell using Omakub defaults
[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp $OMAKUZ_LOCAL/configs/bashrc ~/.bashrc

# Load the PATH for use later in the installers
source $OMAKUZ_LOCAL/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Omakub defaults
cp $OMAKUZ_LOCAL/configs/inputrc ~/.inputrc
