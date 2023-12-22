#!/bin/sh

pulseaudio -D &

~/.mouse_sense.sh &

compton -c -b &

~/.bgimage.sh &

# invoke global X session script
. /etc/X11/Xsession
