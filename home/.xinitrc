#!/usr/bin/env bash

"${HOME}/.autostart" xorg
case $1 in
	bspwm ) exec bspwm ;;
	herbstluftwm ) exec herbstluftwm --locked ;;
esac
