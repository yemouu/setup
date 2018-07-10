[ ! -s /tmp/mpd-pid ] && mpd &

PATH+=":${HOME}/.local/bin:${HOME}/.dotfiles/bin"

export EDITOR="nvim"
export INPUTRC="${HOME}/.inputrc"
export LESSHISTFILE="/dev/null"
export HISTCONTROL="$HISTCONTROL erasedups:ignoreboth"

if [[ -f ${HOME}/.bashrc  ]]; then
	# shellcheck source=/home/yemou/.bashrc
	. "${HOME}/.bashrc"
fi
