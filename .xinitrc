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

# Disable PC beep
xset -b

# Xorg always sets DPI to 96. This forces it to be 192.
xrandr --dpi 192

# Make the laptop screen the primary monitor
xrandr --output eDP1 --primary

# GTK applications uses this to scale the UI
export GDK_SCALE=2
export GDK_DPI_SCALE=0.75

# i3 uses $TERMINAL to determine what i3-sensible-terminal should be
export TERMINAL=gnome-terminal

exec i3
