#!/bin/sh

symbol=$(cat symbols.txt | dmenu -p "Select Symbol" -fn 'mono-16' -l 10)

echo $symbol | copy 

notify-send "${symbol}"
