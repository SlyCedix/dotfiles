#!/bin/sh
FG=$(xrdb -query -all | grep '*foreground' | sed 's/^[^#]*#/#/')
BG=$(xrdb -query -all | grep '*background' | sed 's/^[^#]*#/#/')
FGALT=$(xrdb -query -all | grep '*foreground' | sed 's/^[^#]*#/#/')
N=$(xrdb -query -all | grep '*color4' | sed 's/^[^#]*#/#/')
A=$(xrdb -query -all | grep '*color2' | sed 's/^[^#]*#/#/')
U=$(xrdb -query -all | grep '*color9' | sed 's/^[^#]*#/#/')

rofi -show run -modi run -location 0 -width 30 \
		 -lines 8 -line-margin 0 -line-padding 1 -padding 1\
		 -separator-style none -font "input 10" -columns 1 -bw 0 \
		 -disable-history \
		 -hide-scrollbar \
		 -color-window "$BG, $BG, $FG" \
		 -color-normal "$FG, $BG, $FG, $N, $FGALT" \
		 -color-active "$BG, $FGALT, $BG, $A, $FGALT" \
		 -color-urgent "$BG, $FGALT, $BG, $U, $FGALT" \
		 -kb-row-select "Tab" -kb-row-tab ""


