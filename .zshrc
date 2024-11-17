fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

uwufetch



alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias s="sudo pacman -S"
alias sn="sudo pacman --noconfirm -S"
alias r="sudo pacman -Rns"
alias rn="sudo pacman --noconfirm -Rns"
alias source.="source .zshrc"
alias rmf="sudo rm -fr"
alias ~="cd main"


eval $(thefuck --alias)
