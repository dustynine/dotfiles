# ~/.profile

XDG_CONFIG_HOME="$HOME/.config" 
LD_LIBRARY_PATH=$HOME/.oldlibs
export XDG_CONFIG_HOME
export LD_LIBRARY_PATH
#export PATH=$PATH:/home/mage/.gem/ruby/2.4.0/bin
TZ='Asia/Omsk'; export T

[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"
