#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias shutdown='shutdown now'
alias pacss='pacman -Ss'
alias pacs='sudo pacman -S'
alias pacu='sudo pacman -Syu'
alias pacr='sudo pacman -Rs'
alias aurs='yaourt -S'
alias aurss='yaourt -Ss'
alias aurr='yaourt -Rs'
alias cim='vim'
PS1='[\u@\h \W]\$ '
