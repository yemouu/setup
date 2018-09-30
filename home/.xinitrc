#!/usr/bin/env sh

userresources=$HOME/.Xresources

if [ -f "$userresources" ]
then
    xrdb -merge "$userresources"
fi

xrandr -r 144 &
redshift -t 6500K:3700K &
"${HOME}/.dotfiles/noti/music/music-changed" &
"${HOME}/.fehbg" &
xautolock -time 35 -locker i3locck -killtime 30 -killer "loginctl hibernate"

session=${1:-herbstluftwm}
case $session in
	b|bspwm		) sxhkd -c "${HOME}/.config/sxhkd/sxhkdrc-bspwm" & 
		bspwm ;;

	h|herbstluftwm	)  herbstluftwm --locked ;;

	*		) echo "WM/DE not in list." ;;
esac
