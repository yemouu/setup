PATH+=":${HOME}/.local/bin:${HOME}/.dotfiles/bin"
MANPATH+=":${HOME}/.local/share/man"

VISUAL="nvim"
EDITOR="${VISUAL}"
PAGER="less"

INPUTRC="${HOME}/.inputrc"

GPG_TTY=$(tty)

LESSHISTFILE="/dev/null"
HISTCONTROL+="erasedups:ignoreboth"

export VISUAL EDITOR PAGER INPUTRC GPG_TTY LESSHISTFILE HISTCONTROL

[ ! -s /tmp/mpd-pid ] && mpd &

if [[ -f ${HOME}/.bashrc  ]]
then
	. "${HOME}/.bashrc"
fi
clear
