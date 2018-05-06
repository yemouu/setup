#!/usr/bin/env sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

start-pulseaudio-x11 &
wal -lR &
wal-set &
"${HOME}/.dotfiles/dotconfig/bspwm/bar" &
compton &
urxvtd -q -f -o &

session=${1:-subtle}
case $session in
	b|bspwm		) sxhkd & exec bspwm;;
	s|subtle	) exec subtle;;
	*			) exec $1;;
esac

