#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

LD_LIBRARY_PATH=/home/mage/.oldlibs
PATH=$PATH:/home/mage/bin
export PATH

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
