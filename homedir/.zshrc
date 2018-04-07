autoload -Uz compinit promptinit
compinit
promptinit
prompt walters

scf(){
	curdir=$(pwd)
	cd ${HOME}/music/
	scdl -l https://soundcloud.com/yeemou -fc
	cd $curdir
	unset curdir
}

. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
