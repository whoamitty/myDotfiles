#!/usr/bin/bash

# Function to change directory using fzf
fcd() {
    local dir
    dir=$(find . -type d | fzf "${@}") && cd "$dir"
}

# Function to list files using fzf
fls() {
    ls -lh "$(fzf "${@}")"
}

case  $1 in 
    c*) fcd "${@:2}";;
    l*) fls "${@:2}";;

esac
