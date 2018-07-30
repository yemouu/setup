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
#xsetroot -cursor_name left_ptr &
redshift -l geoclue2 -m randr -t 6500K:3700K &
"${HOME}/.dotfiles/noti/music/music-changed" &
wal -Rt &
pywal-set &

session=${1:-herbstluftwm}
case $session in
	b|bspwm		) sxhkd -c "${HOME}/.config/sxhkd/sxhkdrc-bspwm" &
		exec ck-launch-session bspwm ;;

	h|herbstluftwm	) exec ck-launch-session herbstluftwm --locked ;;

	*		) echo "WM/DE not found." ;;
esac
