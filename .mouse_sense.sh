#!/bin/sh
xinput | grep Logitech | grep pointer | grep -v Keyboard | cut -f2 | cut -c4- | xargs -I{} xinput set-prop {} "libinput Accel Speed" -0.6
