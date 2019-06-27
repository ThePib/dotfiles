source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
xrandr --output HDMI-0 --auto --primary --output DP-1 --auto --left-of HDMI-0 --output eDP-1-1 --auto --right-of HDMI-0
exec i3
