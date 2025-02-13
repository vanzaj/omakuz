source $OMAKUZ_LOCAL/helpers.sh

gnome_screen_lock_enable false 0

for installer in $OMAKUZ_LOCAL/install/desktop/*.sh; do source $installer; done

gnome_screen_lock_enable

gum confirm "Ready to reboot for all settings to take effect?" && sudo reboot
