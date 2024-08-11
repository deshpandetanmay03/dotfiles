#!/bin/sh

action=$(printf "lock\nshutdown\nrestart\nsuspend" | fuzzel --dmenu)

case $action in
    lock)
        hyprlock
        ;;
    shutdown)
        systemctl poweroff
        ;;
    restart)
        systemctl reboot
        ;;
    suspend)
        hyprlock & systemctl suspend
        ;;
esac
