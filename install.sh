#/usr/bin/env bash
set -euxo pipefail

echo "Installing terminal tools..."
. $OMAKUZ_LOCAL/install/terminal.sh

echo "Installing desktop tools..."
RUNNING_GNOME=$([[ "$XDG_CURRENT_DESKTOP" == *"GNOME"* ]] && echo true || echo false)

gnome_screen_lock_enable () {
  local lock="${1:-true}"
  local delay="${2:-300}" # after 300 ms
  gsettings set org.gnome.desktop.screensaver lock-enabled $lock
  gsettings set org.gnome.desktop.session idle-delay $delay
}

if $RUNNING_GNOME; then
  gnome_screen_lock_enable false 0 # disable screen lock while installing
  echo "Get ready to make a few choices..."
  . $OMAKUZ_LOCAL/install/terminal/required/app-gum.sh > /dev/null
  . $OMAKUZ_LOCAL/install/first-run-choices.sh
  . $OMAKUZ_LOCAL/install/desktop.sh
  gnome_screen_lock_enable  # Revert to default screen lock
fi