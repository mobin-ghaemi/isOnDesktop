#!/bin/sh
#This script is to find out whether you are on the desktop or not
rootwin=$(xwininfo -root | grep -Po 'Window id: \K\S+')
currentwin=$(printf '0x%x\n' "$(xdotool getmouselocation | cut -d: -f5)")
[ -n "$currentwin" ] && [ "$currentwin" = "$rootwin" ]
