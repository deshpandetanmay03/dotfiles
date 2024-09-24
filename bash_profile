export EDITOR=nvim
export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin
export PNPM_HOME=$HOME/.cache/pnpm
export TERMINAL="kitty"
export BROWSER="brave"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_BIN_HOME="$HOME/.local/bin"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export HISTFILE="$XDG_CACHE_HOME/history"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export WINEPREFIX="$XDG_DATA_HOME/wine"


# pidof syncthing || syncthing --no-browser > /dev/null &
# pidof xremap || xremap /home/tanmay/.config/xremap/config.yml &
# pidof emacs || emacs --daemon &

. $HOME/.bashrc
