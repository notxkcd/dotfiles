#!/bin/sh

file=$(readlink -f "$1")
dir=${file%/*}
base="${file%.*}"
ext="${file##*.}"

cd "$dir" || exit 1


case "$ext" in
    py)
        black "$file" ;;
    c)
        astyle --style=linux "$file";;
    cpp)
        astyle --style=linux "$file";;
esac
