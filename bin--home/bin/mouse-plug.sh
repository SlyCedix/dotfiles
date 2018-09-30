#!/bin/sh

export DISPLAY=:0
export XAUTHORITY="/home/sly/.Xauthority"

TOUCHPADDEVICE=$(($(xinput list | grep -i touchpad | cut -d= -f2 | cut -d[ -f1)+0))

if [ $1 -eq 1 ]; then
	xinput disable $TOUCHPADDEVICE
else
	xinput enable $TOUCHPADDEVICE
fi

echo "Called by udev with $1" >> $HOME/tmp
