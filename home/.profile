[ ! -s /tmp/mpd-pid ] && mpd &

PATH+=":${HOME}/.local/bin:${HOME}/.dotfiles/bin"

VISUAL="nvim"
EDITOR="${VISUAL}"

INPUTRC="${HOME}/.inputrc"
LESSHISTFILE="/dev/null"
HISTCONTROL="$HISTCONTROL erasedups:ignoreboth"

export VISUAL EDITOR INPUTRC LESSHISTFILE HISTCONTROL

if [[ -f ${HOME}/.bashrc  ]]
then
	# shellcheck source=/home/yemou/.bashrc
	. "${HOME}/.bashrc"
fi
