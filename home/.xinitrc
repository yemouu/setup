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
#wal -Rt &
#pywal-set &

session=${1:-herbstluftwm}
case $session in
	b|bspwm		) sxhkd -c "${HOME}/.config/sxhkd/sxhkdrc-bspwm" &
		exec ck-launch-session bspwm ;;

	h|herbstluftwm	) exec ck-launch-session herbstluftwm --locked ;;

	*		) echo "WM/DE not in list." ;;
esac
