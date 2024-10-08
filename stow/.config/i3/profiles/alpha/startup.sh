#birk file: setup monitor on startup
# xrandr --output DP-1 --auto --right-of DP-3
# xrandr --output HDMI-0 --auto --left-of DP-3
#
exec nitrogen --restore

#screen save afer 20 mins.
#xset dpms 0 0 1200

xset dpms 2000
xautolock -time 50 -locker i3lock

xset s off

$HOME/.config/i3/profiles/alpha/keyboardStartupFix.sh
