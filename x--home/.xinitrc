[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

exec $1
