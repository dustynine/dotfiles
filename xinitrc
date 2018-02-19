#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

numlockx &
sxhkd &
udiskie --tray &
#exec xflux -l 54.972986 -g 73.393411 &
exec syncthing-gtk &
exec polybar dellbar &
exec setxkbmap -layout us,ru -option grp:lalt_lshift_toggle -option caps:swapescape &
exec feh --no-xinerama --bg-fill ~/Pictures/walpapers/new_forest.jpg &
exec xset m 1/1 0 &
exec bspwm -c /home/mage/.config/bspwm/bspwmrc
