[[ $- != *i*  ]] && return

GPG_TTY=$(tty)
export GPG_TTY

#. "/usr/share/bash-completion/bash_completion"
. "${HOME}/.alias"

reset="\\[\\e[0m\\]"
if [[ $EUID = 0 ]]
then
	color="\\[\\e[0;31;1m\\]"
else
	color="\\[\\e[0;32;1m\\]"
fi

if [[ -n "$SSH_CLIENT" ||  -n "$SSH_TTY"  ||  -n "$SSH_CONNECTION" ]]
then
	PS1="(${color}ssh${reset}) "
	[[ -f "${HOME}/.ssh_extras" ]] && . "${HOME}/.ssh_extras"
else
	PS1=""
fi

PROMPT_COMMAND='history -a'
PS1+="${color}\\W ${reset}"
PS2="${color}\\W > ${reset}"
