typeset -U
path=(${HOME}/.local/bin ${HOME}/.setup/bin $path[@])

[ ! -s /tmp/mpd-pid ] && mpd &
