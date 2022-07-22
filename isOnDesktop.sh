#!/bin/sh

# this script return true if the pointer is on the root window.
# requires xorg-xwininfo and xdotool.

rootwin=$(xwininfo -root | grep -Po 'Window id: \K\S+')
currentwin=$(printf '0x%x\n' "$(xdotool getmouselocation | cut -d: -f5)")
[ -n "$currentwin" ] && [ "$currentwin" = "$rootwin" ]
