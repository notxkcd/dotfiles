#!/bin/bash

# set -xe
declare actions=("new
edit
server")

dir=$HOME/notxkcd
post_dir=$dir/content/posts

job=$(echo -e  "${actions[@]}\n" | dmenu -i  -fn 'mono-14' -p "Hugo Action: ")

case "$job" in 
  new)
    article=$(echo | dmenu -i -fn 'mono-14' -p "Article Name:")
    pushd $dir
    hugo new posts/$article.md
    pushd $post_dir
    st -e nvim $article.md
    pushd
    exit
    ;;
  edit)
    pushd $post_dir
    post=$(ls | dmenu -i -fn 'mono-14' -l 10 -p "Select Post:")
    st -e nvim $post
    exit
    ;;
  server)
    pushd $dir
    lsof -t -i:1313 && killport 1313
    hugo server -D &
    url="localhost:1313"
    echo $url | copy
    notify-send  $url
    pushd && exit
    ;;
esac
