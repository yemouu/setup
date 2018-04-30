[ ! -s ~/.dotfiles/dotconfig/mpd/pid ] && mpd

PATH+=":${HOME}/.local/bin"

export EDITOR="nvim"
export LESSHISTFILE="/dev/null"

[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
