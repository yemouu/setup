PATH+=":${HOME}/.local/bin:${HOME}/.dotfiles/bin"

export VISUAL="nvim"
export EDITOR="${VISUAL}"

export INPUTRC="${HOME}/.inputrc"
export LESSHISTFILE="/dev/null"
export HISTCONTROL="$HISTCONTROL erasedups:ignoreboth"

if [[ -f ${HOME}/.bashrc  ]]; then
	# shellcheck source=/home/yemou/.bashrc
	. "${HOME}/.bashrc"
fi
