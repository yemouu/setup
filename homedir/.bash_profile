[ ! -s ~/.dotfiles/dotconfig/mpd/pid ] && mpd

PATH+=":${HOME}/.local/bin:${HOME}/.dotfiles/bin"

export EDITOR="nvim"
export INPUTRC="${HOME}/.inputrc"
export LESSHISTFILE="/dev/null"

[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
