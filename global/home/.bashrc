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

scf() {
        curdir=$(pwd)
        cd "${HOME}/music" || exit
        scdl -l "https://soundcloud.com/yeemou" -f --onlymp3
        cd "${curdir}" || exit
        unset curdir
}

pywal() {
	if [ -z "$1" ]; then
		echo "Wallpaper not specified."
	else
		pape="${HOME}/pictures/wallpapers/Wall-${1}.*"
	fi
	if [ -z "$2" ]; then
		bnd=""	
	else
		bnd="$2"
	fi
	if [ -z "$3" ]; then
		wal -c --backend ${bnd} -i ${pape} -o wal-set
	else
		lida="$3"
		wal -c --backend ${bnd} ${lida} -i ${pape} -o wal-set
	fi

	unset bnd
	unset lida
	unset papenum
}

PS1="[\\[$(tput setaf 005)\\]\\[$(tput bold)\\]\\w\\[$(tput sgr0)\\]]"
PS1+="\\[$(tput setaf 003)\\]\\[$(tput bold)\\]\\$ \\[$(tput sgr0)\\]"
PS2="\\[$(tput setaf 003)\\]\\[$(tput bold)\\]\\$ \\[$(tput sgr0)\\]"
