BASE16_SHELL=$HOME/dotfiles/base16-shell--nostow
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
