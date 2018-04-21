# MPD daemon start (if no other user instance exist)
[ ! -s ~/.dotfiles/dotconfig/mpd/pid ] && mpd

# Path
PATH+=":${HOME}/.local/bin"

# Other
export EDITOR="nvim"

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
