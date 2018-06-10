if [[ $- != *i*  ]]; then
	return
fi

set -o vi

. "/usr/share/bash-completion/bash_completion"

(cat ~/.cache/wal/sequences &)

alias {c,clear}="printf '\\033c'"
alias {q,wq,:q,:wq}="exit"

alias {l,sls,sl,ls}="ls -F --color=auto"
alias la="ls -A"
alias ll="ls -lh"
alias lla="ls -lAh"
alias {cl,cls}="c;l"
alias cla="c;la"
alias cll="c;ll"
alias clla="c;lla"

alias poweroff="sudo poweroff"
alias {reboot,restart}="sudo reboot"

alias ServerNStuff="TERM=linux ssh -p 50769 meyou@ServerNStuff"

ESC="$(printf '\e')"
C1="\\[${ESC}[3#1m\\]"
C2="\\[${ESC}[3#5m\\]"
BOLD="\\[${ESC}[1m\\]"
RESET="\\[${ESC}(B${ESC}[m\\]"

PS1="[${BOLD}${C2}\\w${RESET}]${BOLD}${C1}\\$ ${RESET}"
PS2="${BOLD}${C1}\\$ ${RESET}"
