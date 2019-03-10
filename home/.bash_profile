PATH+=":${HOME}/.local/bin:${HOME}/.setup/bin:${HOME}/.bin"
MANPATH+=":${HOME}/.local/share/man"

VISUAL="nvim"
EDITOR="${VISUAL}"
PAGER="less"

INPUTRC="${HOME}/.inputrc"

LESSHISTFILE="/dev/null"
HISTSIZE=
HISTFILESIZE=
HISTCONTROL+="erasedups:ignoreboth"

export VISUAL EDITOR PAGER INPUTRC LESSHISTFILE HISTSIZE HISTFILESIZE HISTCONTROL

[[ -f ${HOME}/.bashrc  ]] && . "${HOME}/.bashrc"

clear
