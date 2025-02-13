# Alacritty is a GPU-powered and highly extensible terminal. See https://alacritty.org/
sudo apt install -y alacritty
mkdir -p ~/.config/alacritty
cp $OMAKUZ_LOCAL/configs/alacritty.toml ~/.config/alacritty/alacritty.toml
cp $OMAKUZ_LOCAL/themes/tokyo-night/alacritty.toml ~/.config/alacritty/theme.toml
cp $OMAKUZ_LOCAL/configs/alacritty/fonts/CaskaydiaMono.toml ~/.config/alacritty/font.toml
cp $OMAKUZ_LOCAL/configs/alacritty/font-size.toml ~/.config/alacritty/font-size.toml
