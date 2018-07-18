if [[ $- != *i*  ]]; then
	return
fi

#(cat "${HOME}/.cache/wal/sequences")

. "/usr/share/bash-completion/bash_completion"
# shellcheck source /home/yemou/.aliases
. "${HOME}/.aliases"

C1="\\[\\e[0;31;1m\\]"
C2="\\[\\e[0;35;1m\\]"
RESET="\\[\\e[0m\\]"

PS1="[${C2}\\w${RESET}]${C1}\$ ${RESET}"
PS2="${C1}\$ ${RESET}"
