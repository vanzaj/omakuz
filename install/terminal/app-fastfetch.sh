# Display system information in the terminal
sudo add-apt-repository -y ppa:zhangsongcui3371/fastfetch
sudo apt update -y
sudo apt install -y fastfetch

if [ ! -f "$HOME/.config/fastfetch/config.jsonc" ]; then
  mkdir -p ~/.config/fastfetch
  cp $OMAKUZ_LOCAL/configs/fastfetch.jsonc ~/.config/fastfetch/config.jsonc
fi
