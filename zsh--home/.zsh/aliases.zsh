# Package shortcuts
alias pacin='pacaur --noedit -S'
alias pacse='pacaur -Ss'
alias pacre='sudo pacman-key --refresh-keys; pacaur -Sy'
alias pacup='pacaur --noedit --noconfirm -Syu'
alias pacch='checkupdates && pacaur -k'
alias pacrm='pacaur -Rs'
alias paccl='sudo pacman -Rns $(pacman -Qtdq)'

# Increase the size of /tmp directory for larger builds
alias increasetmp='sudo mount -o remount,size=4G,noatime /tmp'

# Dotfile storage shortcuts
alias stowhome='stow -d ~/dotfiles -t ~'
alias stowroot='sudo stow -d ~/dotfiles -t /'
alias stowrm='stow -D'

alias ls='ls -l --color=auto'
alias la='ls -l --all --color=auto'

# make all file modifications verbose
alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'

# prevents accidentally clobbering files
alias mkdir='mkdir -p'

alias mk='touch'
alias rmdir='rm -rf'
