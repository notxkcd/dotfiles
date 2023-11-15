# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

autoload -U colors && colors

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

bindkey -s '^o' 'lfcd^M'  # zsh


if [ "$_START_LFCD" ]; then
    unset _START_LFCD
    lfcd
fi
if [ "$_BRUNO_RUN_LF" ]; then
    unset _BRUNO_RUN_LF
    lfcd
fi

# Launch Ranger
bindkey -s "^N" 'ranger^M'

# source "$XDG_CONFIG_HOME/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme"
source "$XDG_CONFIG_HOME/zsh/plugins/zsh-system-clipboard/zsh-system-clipboard.zsh"
source "$XDG_CONFIG_HOME/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
# source "$XDG_CONFIG_HOME/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"


# export CARGO_HOME="$XDG_DATA_HOME"/cargo


# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
setopt MENU_COMPLETE
# setopt no_list_ambiguous

#source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit

# export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
# color for grep
export GREP_COLORS='ms=01;31'
# colors for man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;36m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
#export LESS_TERMCAP_so=$'\e[01;33m;'
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4)
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;2;32m'

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

HISTSIZE=100000
SAVEHIST=100000

setopt appendhistory

zstyle ':completion:*' menu select
zmodload zsh/complist
# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
# bindkey -M menuselect 'y' vi-yank-line

export KEYTIMEOUT=1


# Some colors
# BLACK="\033[30m"
# RED="\033[31m"
# GREEN="\033[32m"
# YELLOW="\033[33m"
# BLUE="\033[34m"
# PINK="\033[35m"
# CYAN="\033[36m"
# WHITE="\033[37m"
# NORMAL="\033[0;39m"

# Enables hidden files in autocompletion
_comp_options+=(globdots)

# Rehashing
zstyle ':completion:*' rehash true


# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'

  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}

zle -N zle-keymap-select

zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}

zle -N zle-line-init
# Use beam shape cursor on startup.
echo -ne '\e[5 q'
# Use beam shape cursor for each new prompt.
preexec() { echo -ne '\e[5 q' ;}


# Use lf to switch directories and bind it to ctrl-o
# bindkey -s '^a' 'bc -l\n'

bindkey -s '^f' 'cd "$(dirname "$(fzf)")"^M'

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line


killpicom(){

	pidof picom && pkill picom || picom -b
	zle reset-prompt; zle redisplay
}
# zle -N killpicom
bindkey "^b" killpicom


# Z.lua config
eval "$(lua $HOME/.config/zsh/z.lua/z.lua --init zsh)"


LFCD="$HOME/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi

tmuxcd () {


	if [[ -z "$TMUX" ]] ;then
	    ID="$( tmux ls | grep -vm1 attached | cut -d: -f1 )" # get the id of a deattached session
	    if [[ -z "$ID" ]] ;then # if not available create a new one
		tmux new-session
	    else
		tmux attach-session -t "$ID" # if available attach to it
	    fi
	fi
}

run_tmux(){
	tmux new-session
}

tmux_chek(){
	tmux_check
}


zle -N run_tmux
bindkey -s "^t" "tmux_check^M"

anaconda_env_activate_zsh(){
	# source $XDG_DATA_HOME/anaconda/bin/activate root
  source $HOME/anaconda3/bin/activate
}

export STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship.toml


export QUTEWAL_DYNAMIC_LOADING=True

# export QT_DEVICE_PIXEL_RATIO=2
export QT_AUTO_SCREEN_SCALE_FACTOR=true

rga-fzf() {
	RG_PREFIX="rga --files-with-matches"
	local file
	file="$(
		FZF_DEFAULT_COMMAND="$RG_PREFIX '$1'" \
			fzf --sort --preview="[[ ! -z {} ]] && rga --pretty --context 5 {q} {}" \
				--phony -q "$1" \
				--bind "change:reload:$RG_PREFIX {q}" \
				--preview-window="70%:wrap"
	)" &&
	echo "opening $file" &&
	xdg-open "$file"
}

export MANPATH="/usr/local/man:/usr/local/share/man:/usr/share/man:/usr/man:$MANPATH"


# Colors
default=$(tput sgr0)
red=$(tput setaf 1)
green=$(tput setaf 2)
purple=$(tput setaf 5)
orange=$(tput setaf 9)

# Less colors for man pages
export PAGER=less
# Begin blinking
export LESS_TERMCAP_mb=$red
# Begin bold
export LESS_TERMCAP_md=$orange
# End mode
export LESS_TERMCAP_me=$default
# End standout-mode
export LESS_TERMCAP_se=$default
# Begin standout-mode - info box
export LESS_TERMCAP_so=$purple
# End underline
export LESS_TERMCAP_ue=$default
# Begin underline
export LESS_TERMCAP_us=$green


export JAVA_HOME="/usr/lib/jvm/java-1.8-openjdk/"



#source /home/shahid/.config/broot/launcher/bash/br

# bun completions
[ -s "/home/shahid/.bun/_bun" ] && source "/home/shahid/.bun/_bun"


# alias tlmgr="/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode"

# bun completions
[ -s "/home/shahid/.local/share/bun/_bun" ] && source "/home/shahid/.local/share/bun/_bun"


# Colors
# default=$(tput sgr0)
# red=$(tput setaf 1)
# green=$(tput setaf 2)
# purple=$(tput setaf 5)
# orange=$(tput setaf 9)

# # Less colors for man pages
# export PAGER=less
# # Begin blinking
# export LESS_TERMCAP_mb=$red
# # Begin bold
# export LESS_TERMCAP_md=$orange
# # End mode
# export LESS_TERMCAP_me=$default
# # End standout-mode
# export LESS_TERMCAP_se=$default
# # Begin standout-mode - info box
# export LESS_TERMCAP_so=$purple
# # End underline
# export LESS_TERMCAP_ue=$default
# # Begin underline
# export LESS_TERMCAP_us=$green


# bindkey -s '^p' 'eval !!^M'

bindkey '^j' self-insert



# Define a custom widget that executes the last command
execute_last_command_widget() {
    LBUFFER="!!"
    zle accept-line
}

# Bind the custom widget to Ctrl+r
zle -N execute_last_command_widget
bindkey '^r' execute_last_command_widget


#
eval $(opam env)

# eval "$(starship init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
# [[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# source <(antibody init)
# antibody bundle < ~/.config/zsh/.zsh_plugins.txt

export LIBGS="/usr/lib/libgs.so"


# enable control-s and control-q
# stty start undef
# stty stop undef
# setopt noflowcontrol
# export MANPATH="$MANPATH:/opt/texlive/2019/texmf-dist/doc/man"
# export INFOPATH="/opt/texlive/2019/texmf-dist/doc/info"
# export PATH="$PATH:/opt/texlive/2019/bin/x86_64-linux/"


export MANPATH="$MANPATH:/opt/texlive/2023/texmf-dist/doc/man"
export INFOPATH="/opt/texlive/2023/texmf-dist/doc/info"
export PATH="$PATH:/opt/texlive/2023/bin/x86_64-linux/"
export PATH="$PATH:/home/shahid/.local/share/pypy3.10/bin"

python-local-venv(){
    source .local/share/python3-packages/bin/activate
}
