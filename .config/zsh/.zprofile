#!/bin/zsh

# ~/ Clean-up:
export DISPLAY="0.0"

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_RUNTIME_DIR="$HOME/.cache/xdgr"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export R_LIBS_USER="$HOME/.local/share/R/Lib"


# export DENO_INSTALL="/home/shahid/.local/share/deno"

# STDMAN(cpp/c)
export MANPATH=/usr/local/man:/usr/local/share/man:/usr/share/man:/usr/man

export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export HISTFILE="$XDG_DATA_HOME"/zsh/history
# export PATH="/home/shahid/.local/share/cargo/bin/:$PATH"
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
# export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export EDITOR="nvim"
export LIBVA_DRIVER_NAME=nouveau
export LIBVA_DRIVER_NAME=iHD
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export SUDO_ASKPASS="$HOME/.local/bin/pass.sh"
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
#export CARGO_HOME="$XDG_DATA_HOME"/cargo
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/.gtkrc
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter

# PATH VARS
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH="$PATH:$(du "$HOME/.local/bin/scripts" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH="$PATH:$(du "$HOME/.local/bin/statusbar" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
#export PATH="$PATH:$(du $HOME/.local/share/opt | grep -i "bin" | awk '{print $2}' | tr '\n' ':' | sed 's/:$//')"
#export PATH=~/.npm-global/bin:$PATH

export LIBGS="/usr/lib/libgs.so"

export BUN_INSTALL="$HOME/.local/share/bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$PATH:/home/shahid/.local/bin/third_party_apps"
export PATH="$PATH:/home/shahid/.local/share/opt/zig-linux"
# export PATH="$PATH:$HOME/.local/share/anaconda3/bin"
# export PATH="$PATH:$HOME/anaconda3/bin"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="$PATH:/home/shahid/.config/emacs/bin"
export PATH="$PATH:$XDG_DATA_HOME/Odin"
# export PATH="$PATH:/home/shahid/.local/share/dotnet-sdk-7.0"
export PATH="$PATH:/home/shahid/.local/share/graudit-3.5/"
export PATH="$PATH:/home/shahid/.local/share/pypy3.10/bin"
export GRDIR="/home/shahid/.local/share/graudit-3.5/signatures/"

export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/inputrc"
export QT_QPA_PLATFORMTHEME="qt5ct"

export TERMINAL="st"
# export TERM="alacritty msg create-window) && alacritty"
export READER="zathura"
export BROWSER="firefox"
export RUST_BACKTRACE=1


# Latex
export MANPATH="$MANPATH:/opt/texlive/2023/texmf-dist/doc/man"
export INFOPATH="/opt/texlive/2023/texmf-dist/doc/info"
export PATH="$PATH:/opt/texlive/2023/bin/x86_64-linux/"

# This is the list for lf icons:

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep dwm || startx "$XDG_CONFIG_HOME/X11/xinitrc"
fi
