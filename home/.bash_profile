PATH="${HOME}/.setup/bin:${HOME}/.bin:${HOME}/.local/bin:${HOME}/.cargo/bin:/usr/lib/ccache/bin:$PATH"
MANPATH="${HOME}/.local/share/man:$MANPATH"

VISUAL="nvim"
EDITOR="${VISUAL}"
PAGER="less"

INPUTRC="${HOME}/.inputrc"

LESSHISTFILE="/dev/null"

HISTSIZE=
HISTFILESIZE=
HISTCONTROL+="erasedups:ignoreboth"

VDPAU_DRIVER=radeonsi

CCACHE_DIR="/var/tmp/ccache"

export VISUAL EDITOR PAGER INPUTRC LESSHISTFILE HISTSIZE HISTFILESIZE HISTCONTROL VDPAU_DRIVER CCACHE_DIR

[[ -f ${HOME}/.bashrc  ]] && . "${HOME}/.bashrc"

clear
