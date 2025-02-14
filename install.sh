#/usr/bin/env bash
set -euxo pipefail

. ./helpers.sh

echo "Installing terminal tools..."
. $OMAKUZ_LOCAL/install/terminal.sh

echo "Installing desktop tools..."
if $RUNNING_GNOME; then
  gnome_screen_lock_enable false 0 # disable screen lock while installing
  echo "Get ready to make a few choices..."
  . $OMAKUZ_LOCAL/install/terminal/required/app-gum.sh > /dev/null
  . $OMAKUZ_LOCAL/install/first-run-choices.sh
  . $OMAKUZ_LOCAL/install/desktop.sh
  gnome_screen_lock_enable  # Revert to default screen lock
fi