autoload -U compinit
compinit

zstyle ':completion:*' rehash true
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

setopt autocd
setopt correctall
setopt extendedglob
setopt hist_ignore_all_dups
setopt hist_ignore_space

bindkey -v

alias c="clear"
alias cla="c;la"
alias cll="c;ll"
alias clla="c;lla"
alias la="ls -A"
alias ll="ls -lh"
alias lla="ls -lAh"
alias sns="TERM=xterm-256color ssh -p 50769 server@ThingsNStuff-ServerEdition"
alias suef="clear;sudo tail -f /var/log/emerge-fetch.log"
alias suel="clear;sudo tail -f /var/log/emerge.log"
alias sues="sudo -Es"
alias sup="clear;cd /etc/portage;sudo -Es"
alias {cl,cls}="c;l"
alias {l,sls,sl,ls}="ls -F --color=auto"
alias {q,wq}="exit"

PS1='[%F{4}%{%B%}%2~%{%b%}%f]%F{1}%{%B%}%(!.#.$)%{%b%}%f '
RPS1='%F{8}%4d%f'
PS2='%F{1}%(!.#.$)%f '
RPS2='%F{8}%2d%f'

. "${HOME}/doc/git/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
