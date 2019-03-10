#!/usr/bin/env bash

DISPLAY=:0 "${HOME}/.autostart" xorg &
case $1 in
	bspwm ) exec bspwm ;;
	herbstluftwm ) exec herbstluftwm --locked ;;
	openbox ) exec openbox ;;
esac
