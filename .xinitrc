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

# DPI configuration
case $(hostname) in
  hydreigon )
    ;;
  heracross )
    # Xorg always sets DPI to 96. This forces it to be 192 for heracross' high
    # resolution screen.
    xrandr --dpi 192;
    # GTK applications use these to scale the UI
    export GDK_SCALE=2;
    export GDK_DPI_SCALE=0.75;;
  * )
    echo "Unknown hostname $hostname. Skipping DPI configuration...";;
esac

# Monitor configuration
case $(hostname) in
  hydreigon )
    # Mark the main screen as primary
    xrandr --output eDP-1 --primary;
    # Put the HDMI monitor to the left of the main screen
    xrandr --output HDMI-1 --left-of eDP-1;;
  heracross )
    # Mark the main screen as primary
    xrandr --output eDP1 --primary;;
  * )
    echo "Unknown hostname $hostname. Skipping monitor configuration...";;
esac

exec i3
