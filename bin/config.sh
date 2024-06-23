#!/bin/sh

config=$(printf "config folder
nvim
hypr
xremap
binary" | fuzzel --dmenu)

case $config in
    "config folder")
        echo "/home/tanmay/.config"
        ;;
    nvim)
        echo "/home/tanmay/.config/nvim"
        ;;
    hypr)
        echo "/home/tanmay/.config/hypr"
        ;;
    xremap)
        echo "/home/tanmay/.config/xremap"
        ;;
    binary)
        echo "/home/tanmay/.local/bin"
        ;;
esac
