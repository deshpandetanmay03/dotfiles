#!/bin/sh

action=$(printf "lock\nshutdown\nrestart\nsuspend\nhibernate" | fuzzel --dmenu)

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
        systemctl suspend
        ;;
    hibernate)
        systemctl hibernate
        ;;
esac
