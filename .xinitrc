#!/bin/sh

pulseaudio -D &

~/.mouse_sense.sh &

compton -c -b &

feh --bg-scale `cat ~/.bgimage` &

# invoke global X session script
. /etc/X11/Xsession
