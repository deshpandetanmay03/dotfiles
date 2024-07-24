#!/bin/sh

config=$(printf "config folder
nvim
hypr
xremap
binary" | fuzzel --dmenu)

case $config in
    "config folder")
        $1 $2 "/home/tanmay/.config"
        ;;
    nvim)
        $1 $2 "/home/tanmay/.config/nvim"
        ;;
    hypr)
        $1 $2 "/home/tanmay/.config/hypr"
        ;;
    xremap)
        $1 $2 "/home/tanmay/.config/xremap"
        ;;
    binary)
        $1 $2 "/home/tanmay/.local/bin"
        ;;
    "")
        echo "invalid option"
        ;;
    *)
        $1 $2 "/home/tanmay/.config/$config"
        ;;
esac

