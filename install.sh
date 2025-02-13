set -euo pipefail

source ./helpers.sh

source_if_readable $OMAKUZ_LOCAL/install/check-version.sh

if $RUNNING_GNOME; then
  gnome_screen_lock_enable false 0 # disable screen lock while installing

  echo "Get ready to make a few choices..."
  source $OMAKUZ_LOCAL/install/terminal/required/app-gum.sh > /dev/null
  source $OMAKUZ_LOCAL/install/first-run-choices.sh

  echo "Installing terminal and desktop tools..."
else
  echo "Only installing terminal tools..."
fi

source $OMAKUZ_LOCAL/install/terminal.sh

if $RUNNING_GNOME; then
  source $OMAKUZ_LOCAL/install/desktop.sh
  gnome_screen_lock_enable  # Revert to default screen lock
fi
