if [[ $- != *i*  ]]; then
	return
fi

GPG_TTY=$(tty)
export GPG_TTY

. "/usr/share/bash-completion/bash_completion"
. "${HOME}/.alias"

C1="\\[\\e[0;31;1m\\]"
C2="\\[\\e[0;35;1m\\]"
RESET="\\[\\e[0m\\]"

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ] || [ -n "$SSH_CONNECTION" ]
then
	PS1="(${C1}ssh${RESET}) "
else
	PS1=""
fi

PS1+="${C2}\\w${RESET}]${C1}\\$ ${RESET}"
PS2="${C1}\\$ ${RESET}"
