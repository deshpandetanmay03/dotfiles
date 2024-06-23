#!/bin/sh

action=$(printf "nothing\npoweroff\nreboot\nsuspend\nhibernate" | fuzzel --dmenu)

case $action in
    nothing)
        ;;
    poweroff)
        poweroff
        ;;
    reboot)
        reboot
        ;;
    suspend)
        systemctl suspend
        ;;
    hibernate)
        systemctl hibernate
        ;;
esac
