typeset -U
path=(${HOME}/.local/bin ${HOME}/.dotfiles/bin $path[@])

[ ! -s /tmp/mpd-pid ] && mpd &
