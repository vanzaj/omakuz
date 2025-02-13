RUNNING_GNOME=$([[ "$XDG_CURRENT_DESKTOP" == *"GNOME"* ]] && echo true || echo false)

gnome_screen_lock_enable () {
  local lock="${1:-true}"
  local delay="${2:-300}" # after 300 ms
  gsettings set org.gnome.desktop.screensaver lock-enabled $lock
  gsettings set org.gnome.desktop.session idle-delay $delay
}


source_if_readable () {
  [[ -r "$1" ]] && source "$1"
}
