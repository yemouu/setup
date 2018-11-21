PATH+=":${HOME}/.local/bin:${HOME}/.dotfiles/bin:${HOME}/.bin"
MANPATH+=":${HOME}/.local/share/man"

VISUAL="nvim"
EDITOR="${VISUAL}"
PAGER="less"

INPUTRC="${HOME}/.inputrc"

LESSHISTFILE="/dev/null"
HISTSIZE=-1
HISTFILESIZE=-1
HISTCONTROL+="erasedups:ignoreboth"

export VISUAL EDITOR PAGER INPUTRC LESSHISTFILE HISTCONTROL

[[ ! -s /tmp/mpd-pid ]] && mpd &
[[ -f ${HOME}/.bashrc  ]] && . "${HOME}/.bashrc"

clear
