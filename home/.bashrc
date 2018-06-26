if [[ $- != *i*  ]]; then
	return
fi

. "/usr/share/bash-completion/bash_completion"

#(cat ${HOME}/.cache/wal/sequences)

alias c="clear"
alias {q,wq,:q,:wq}="exit"

alias {l,sls,sl,ls}="ls -F --color=auto"
alias la="ls -A"
alias ll="ls -lh"
alias lla="ls -lAh"
alias {cl,cls}="c;l"
alias cla="c;la"
alias cll="c;ll"
alias clla="c;lla"

alias ServerNStuff="TERM=linux ssh -p 50769 meyou@ServerNStuff"

ESC="$(printf '\e')"
C1="\[\e[0;31;1m\]"
C2="\[\e[0;35;1m\]"
RESET="\[\e[0m\]"

PS1="[${C2}\w${RESET}]${C1}\$ ${RESET}"
PS2="${C1}\$ ${RESET}"
