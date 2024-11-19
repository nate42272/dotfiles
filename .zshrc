fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure



wal -q -i ~/images/wallpaper.jpg
uwufetch



alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias s="sudo pacman -S"
alias sn="sudo pacman --noconfirm -S"
alias r="sudo pacman -Rns"
alias rn="sudo pacman --noconfirm -Rns"
alias syu="sudo pacman -Syu"
alias rmf="sudo rm -fr"
alias source.="source .zshrc"


eval $(thefuck --alias) # you need "fuck" installed for this to work

export PATH=$PATH:~/.local/bin/
