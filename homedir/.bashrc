[[ $- != *i* ]] && return

set -o vi

alias a="alias"
a {c,clear}="printf '\\033c'"
a {q,wq,:q,:wq}="exit"

a {l,sls,sl,ls}="ls -F --color=auto"
a la="ls -A"
a ll="ls -lh"
a lla="ls -lAh"
a {cl,cls}="c;l"

a xup="sudo xbps-install -Suv"
a xorph="sudo xbps-remove -Oov"
a xfind="xbps-query -Rs"
a xpkgc="xbps-query -l | wc -l"
a xget="sudo xbps-install -Sv"
a xrm="sudo xbps-remove -Rv"
a xl="xbps-query -l"
a xm="xbps-query -m"

a poweroff="sudo poweroff"
a {reboot,restart}="sudo reboot"

scf() {
        curdir=$(pwd)
        cd "${HOME}/music" || exit
        scdl -l "https://soundcloud.com/yeemou" -fc --onlymp3
        cd "${curdir}" || exit
        unset curdir
}

pywal() {
	if [ -z "$1" ]; then
		echo "Wallpaper not specified."
	else
		pape="${HOME}/pictures/wallpapers/Wall-${1}.*"
		wal --backend colorz -cli ${pape} -o wal-set
	fi
	unset papenum
}

PS1="[\\[$(tput setaf 003)\\]\\[$(tput bold)\\]\\w\\[$(tput sgr0)\\]]"
PS1+="\\[$(tput setaf 006)\\]\\[$(tput bold)\\]\\$ \\[$(tput sgr0)\\]"
PS2="\\[$(tput setaf 006)\\]\\[$(tput bold)\\]\\$ \\[$(tput sgr0)\\]"
