PATH+=":${HOME}/.local/bin:${HOME}/.dotfiles/bin"
MANPATH+=":${HOME}/.local/share/man"

VISUAL="nvim"
EDITOR="${VISUAL}"
PAGER="less"

INPUTRC="${HOME}/.inputrc"

LESSHISTFILE="/dev/null"
HISTCONTROL+="erasedups:ignoreboth"

export VISUAL EDITOR PAGER INPUTRC LESSHISTFILE HISTCONTROL

[ ! -s /tmp/mpd-pid ] && mpd &

if [[ -f ${HOME}/.bashrc  ]]
then
	. "${HOME}/.bashrc"
fi
clear
