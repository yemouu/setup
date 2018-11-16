#!/usr/bin/env sh

userresources=$HOME/.Xresources

if [ -f "$userresources" ]
then
    xrdb -merge "$userresources"
fi

xrandr -r 144 &
exec redshift -t 6500K:3700K &
"${HOME}/.fehbg" &

session=${1:-bspwm}
case $session in
	b|bspwm		) sxhkd -c "${HOME}/.config/sxhkd/sxhkdrc-bspwm" &
		xsetroot -cursor_name left_ptr & exec bspwm ;;

	h|herbstluftwm	) exec herbstluftwm --locked ;;

	*		) echo "WM/DE not in list." ;;
esac
