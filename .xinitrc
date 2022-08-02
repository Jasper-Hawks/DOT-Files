#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap # merge in defaults and keymaps
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

########twm &
########xclock -geometry 50x50-1+1 &
########xterm -geometry 80x50+494+51 &
########xterm -geometry 80x20+494-0 &
########exec xterm -geometry 80x66+0+0 -name login

xrandr --output DP-4 --mode 2560x1440 --rate 165 --right-of DP-2
xrandr --output DP-2 --mode 2560x1440 --rate 165


wal -R

#cp $HOME/.config/wal/templates/colors-wal-dwm.h $HOME/.cache/wal/colors-wal-dwm.h &
#exec qtile start

xbindkeys

exec xcompmgr &
exec dwm &
exec dwmblocks

