#!/bin/bash
if [[ $(xrandr -q | grep "HDMI-1-0 connected") ]]; then
	xrandr --output eDP-1 --off --output DP-1 --off --output DP-2 --off --output HDMI-1-0 --mode 2560x1080 &
fi
setxkbmap -option caps:escape
$HOME/.config/slstatus/slstatus &
# dwmblocks &
/usr/lib/xfce-polkit/xfce-polkit &
picom --config $HOME/.config/picom/picom.conf &
redshift &
flameshot &
nitrogen --restore
