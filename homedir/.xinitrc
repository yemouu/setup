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
#"${HOME}/.dotfiles/dotconfig/bspwm/top" &
#"${HOME}/.dotfiles/dotconfig/bspwm/bot" &
urxvtd -q -f -o &
sxhkd &
xbanish &
redshift -l 33.4:-84.5 &
exec bspwm
