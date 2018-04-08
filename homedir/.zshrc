autoload -Uz compinit promptinit colors

compinit
promptinit
colors

setopt completealiases
zstyle ':completion:*' rehash true
ttyctl -f

PS1="[%{$fg_bold[red]%}%1~%{$reset_color%}] %{$fg_bold[yellow]%}%(!.%%.#)%{$fg_no_bold[yellow]%}%n%{$reset_color%} "
RPS1="%{$fg[cyan]%}%~"
PS2="%{$fg_bold[yellow]%}%(!.%%.#) %{$fg_bold[red]%}%_ %{$fg_no_bold[yellow]%}> "
RPS2="%{$fg[cyan]%}<"

# Some aliases from http://github.com/mitchweaver/dots
alias a="alias"
a {c,clear}="printf '\033c'"
a {q,wq,:q,:wq}="exit"

a {l,sls,sl,ls}="ls -F --color=auto"
a la="ls -A"
a ll="ls -lh"
a lla="ls -lAh"
a {cl,cls}="c;l"

a poweroff="sudo poweroff"
a {reboot,restart}="sudo reboot"

scf(){
	curdir=$(pwd)
	cd ${HOME}/music/
	scdl -l https://soundcloud.com/yeemou -fc
	cd ${curdir}
	unset curdir
}

. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
