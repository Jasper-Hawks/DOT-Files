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

xrandr --output DP-4  --mode 2560x1440 --rate 165
xrandr --output DP-2 --mode 2560x1440 --rate 165 --auto --right-of DP-4

export ICAROOT="/media/Applications/citrix/citrix/"

wal -R && razer-cli -a

# Run compositor as a daemon
picom -b
#   twm &
#   xclock -geometry 50x50-1+1 &
#   xterm -geometry 80x50+494+51 &
#   xterm -geometry 80x20+494-0 &
#   xterm -geometry 80x66+0+0 -name login &

exec dwmblocks &
exec dwm

# Change caps lock to escape
setxkbmap -option caps:escape

