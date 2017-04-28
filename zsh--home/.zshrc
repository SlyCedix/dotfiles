# If you come from bash you might have to change your $PATH.
  export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

export WM=i3-gaps

#autostart wal
(wal -r &)

ENABLE_CORRECTION="true"

plugins=(git zsh-syntax-highlighting extract)

source $ZSH/oh-my-zsh.sh

source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
