#!/bin/sh
rofi -show run -modi run -location 0 -width 30 \
     -lines 8 -line-margin 0 -line-padding 1 -padding 1 \
     -separator-style none -font "hack 9" -columns 1 -bw 0 \
     -disable-history -hide-scrollbar \
     -kb-row-select "Tab" -kb-row-tab "" \
     -theme ~/.local/share/rofi/themes/base16-ashes.rasi
