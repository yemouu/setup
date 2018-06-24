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

xrandr -r 144 &
wal -Rt &
pywal-set
urxvtd -q -f -o &
xsetroot -cursor_name left_ptr &
${HOME}/.dotfiles/global/noti/music/music-changed &
sxhkd &
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session bspwm
