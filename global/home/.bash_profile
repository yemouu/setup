[ ! -s ~/.dotfiles/dotconfig/mpd/pid ] && mpd

PATH+=":${HOME}/.local/bin:${HOME}/.dotfiles/global/bin"

export EDITOR="nvim"
export INPUTRC="${HOME}/.inputrc"
export LESSHISTFILE="/dev/null"

if [[ -f ~/.bashrc  ]]; then
	. ~/.bashrc
fi
