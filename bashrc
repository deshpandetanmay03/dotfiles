alias \
    cp="cp -iv" \
    mv="mv -iv" \
    rm="rm -vI" \
    mkd="mkdir -pv" \
    ls="ls -hN --color=auto --group-directories-first" \
    grep="grep --color=auto" \
    v="$EDITOR" \
    p="sudo pacman" \
    P="paru" \
    b="cat /sys/class/power_supply/BAT0/capacity" \
;

function up() {
    for i in $(seq 1 $1); do
        cd ..
    done
}

function down() {
    for i in $(seq 1 $1); do
        cd -
    done
}

function music() {
    cd ~/Music
    for i in "$@"; do
        spotdl "$i"
    done
    cd -
}

function gcp () {
  git add .
  git commit
  git push
}

#source /etc/bash_completion.d/*
