i3-msg "workspace 10; append_layout ~/.config/i3/info.json"

sleep 1

(urxvt -name ncmterm -e 'ncmpcpp'&)
(urxvt -name weeterm -e 'weechat'&)
(urxvt -name alsaterm -e 'alsamixer'&)
(urxvt -name cavaterm -e 'cava'&)
(urxvt -name clockterm -e 'tty-clock -D'&)
(urxvt -name htopterm -e 'htop'&)

sleep 1

wal -i "$(< "${HOME}/.cache/wal/wal")"

