source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
xrandr --output eDP-1-1 --auto --primary --output DP-1 --auto --right-of eDP-1-1 --output HDMI-0 --auto --right-of DP-1
exec i3
