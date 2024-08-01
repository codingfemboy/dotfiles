#!/bin/bash
#
xrandr --newmode "1920x1080"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode eDP1 1920x1080
xrandr --output eDP1 --mode 1920x1080

if [ -e ~/.fehbg ]; then
    source ~/.fehbg
fi

#xinput set-prop 'SYNA327E:00 06CB:CD4F Touchpad' 'libinput Natural Scrolling Enabled' 1
#xinput set-prop 'SYNA327E:00 06CB:CD4F Touchpad' 'libinput Tapping Enabled' 1
