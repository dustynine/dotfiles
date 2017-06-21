# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias ll='ls -lA --color=auto'
alias shutdown='shutdown now'
alias pacss='pacman -Ss'
alias pacs='sudo pacman -S'
alias pacu='sudo pacman -Syu'
alias pacr='sudo pacman -Rs'
alias aurs='pacaur -S'
alias aurss='pacaur -s'
alias vi='vim'
#alias krita='LD_LIBRARY_PATH=/home/mage/.oldlibs/ krita'
alias vii='sudo vim'
alias ht='htop'
#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
