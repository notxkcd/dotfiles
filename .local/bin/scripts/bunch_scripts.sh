#!/bin/bash
set -xe

Numpy="$HOME/opt/Dox/numpy"
Hoogle="$HOME/opt/Dox/hoogle"
Pandas="$HOME/opt/Dox/pandas"
Python="$HOME/opt/Dox/python"
Scipy="$HOME/opt/Dox/scipy"
Torch="$HOME/opt/Dox/torch"
Vision="$HOME/opt/Dox/vision"
Ocaml="$HOME/opt/Dox/ocaml"
Go="$HOME/opt/Dox/Go/Contents/Resources/Documents/"
Matplotlib="$HOME/opt/Dox/Matplotlib/Contents/Resources/Documents/"
Rust="$HOME/opt/Dox/Rust/Contents/Resources/Documents/"
D="$HOME/opt/Dox/D/d/"
wiki="$HOME/wiki/"

declare options=("Mousewheel
Audio_Issue
Day-Mode
Blur
Exec
Dlang
Numpy
Haskell
Hoogle
Pandas
Hugo_Blog
Python
Scipy
Torch
Redshift
Offline
Go
Rust
Matplotlib
Redshift-Kill
Vision
Mousewheel
Ocaml
Scrot
Setbg
Kill_Emacs
Wikipedia-zim
Wikipedia
Wikibooks
MDN-Docs
Powertop
")

FILE=$(echo -e "${options[@]}" | dmenu -i -fn "mono-15" -p "$1" -nb  "#1d1100"  -sb "#6fa695" -sf "#010101" -nf gray  -p 'Run Scripts:')

case "$FILE" in

Mousewheel)
	 exec mouse_wheel.sh
		;;
Python)
	 cd $Python; serve 8080
	 ;;
Hoogle)
	 cd $Hoogle; serve 8081
	 ;;
Haskell)
	 cd $Hoogle; serve 8081
	 ;;
Numpy)
	 cd $Numpy; serve 8082
	 ;;
Pandas)
	 cd $Pandas; serve 8083
	 ;;
Scipy)
	 cd $Scipy; serve 8084
	 ;;
Torch)
	 cd $Torch; serve 8085
	 ;;
Vision)
	 cd $Vision; serve 8086
	 ;;
Ocaml)
	 cd $Ocaml; serve 8087
	 ;;
Go)
	 cd $Go; serve 8088
	 ;;
Rust)
	 cd $Rust; serve 8089
	 ;;
Matplotlib)
	 cd $Matplotlib; serve 8090
	 ;;
Dlang)
	 cd $D; serve 8091
	 ;;
Redshift)
	 exec redshift -l 12.9716:77.5946;
	 ;;
Redshift-Kill)
	 pidof redshift | xargs kill
	 ;;
Day-Mode)
	 exec redshift -l 42.9716:17.5946;
	 ;;
Wikipedia)
	 cd $wiki && serve  9999 wikipedia_en_all_maxi_2021-12.zim
	 ;;
Wikipedia-zim)
	 killport 8888; cd $wiki && python serve.py & notify-send "Wikipedia -> localhost:8888" ; echo "localhost:8888" | copy ;
	 ;;
Wikibooks)
	 cd $wiki && serve 7777 wikibooks_en_all_maxi_2021-03.zim
	 ;;
MDN-Docs)
	 cd $wiki && serve 5000  developer.mozilla.org_en_all_2022-03.zim
	 ;;
Setbg)
	 exec setbg
	 ;;
Kill_Emacs)
	 exec pidof emacs | cut  -f 1 -d " " | xargs kill
	 ;;
Scrot)
	 cd "$HOME/Pictures" &&	scrot -s
	 ;;
Powertop)
	 sudo powertop --auto-tune
	 ;;
Audio_Issue)
	# killall pipewire pipewire-pulse wireplumber
	pipewire &
	pipewire-pulse &
	wireplumber &
	pamixer --set-volume 75 && pkill -RTMIN+10 dwmblocks
	;;
Blur)
	(pidof picom && pkill picom) &&  picom --backend glx --vsync  --blur-method dual_kawase --blur-strength 10 -b || (picom --backend glx --vsync  --blur-method dual_kawase --blur-strength 10 -b)
	;;
Exec)
	command=$(dmenu -i  -fn 'mono-15' -p "Enter Commands: ")
	exec $command
	;;
Hugo_Blog)
      hugo.sh
      ;;
Offline)
    set -xe
    declare site=("c++
python
sympy
elm")
    selection=$(echo -e "${site[@]}" | dmenu -i  -p "Choose: "  -fn 'mono-16')
    case "$selection" in
        "c++")
            serve 9090  "/home/shahid/Dox/offline/cppreference/reference/en/index.html" ;;
        "python")
            serve 9091  "/home/shahid/Dox/offline/python-3.11.5-docs-html/index.html" ;;
        "sympy")
            serve 9092  "/home/shahid/Dox/offline/sympy-docs-html-1.12/index.html" ;;
        "elm")
            serve 9093  "/home/shahid/Dox/offline/guide.elm-lang.org/index.html" ;;
    esac
    ;;
*)
	 exit 1
	 ;;
esac
# alacritty -e nvim "$FILE"
