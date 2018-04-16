#!/usr/bin/env sh

# ConsoleKit2
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# X variables
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
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

# Start up programs
start-pulseaudio-x11 &
#compton &
wal -lR &
wal-set &

# Start WM/DE
case $session in
	bspwm|b		) exec $STARTUP bspwm;;
	herbstluftwm|h	) exec $STARTIP herbstluftwm --locked;;
	*		) exec $STARTUP herbstluftwm --locked;;
esac
