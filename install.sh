#!/bin/sh

# Prompt for password at the start
sudo -n true

# Change Mirror to China
echo "Changing mirrors to Beijing Foreign Studies University(BFSU)"
sudo echo "repository=https://mirrors.bfsu.edu.cn/voidlinux/current/" > /etc/xbps.d/00-repository-main.conf

#After changing the URLs, you must synchronize xbps with the new mirrors:
echo "synchronize xbps with the new mirrors..."
# sudo xbps-install -S

# Install dependencies
sudo xbps-install -S dbus elogind vim neovim git  xinit xcompmgr polkit arandr xdotool \
  alacritty exa lf ranger stow  \
  font-awesome font-awesome5 font-awesome6 font-iosevka noto-fonts-emoji noto-fonts-ttf\
  chrony pkgconf harfbuzz icu ImageMagick\
  mpv xwallpaper sxiv gcc tcc fasm libXinerama-devel \
  libXft-devel freetype-devel wget dmenu sxhkd tmux xcape zsh zathura \
  pcmanfm lxappearance imwheel zenity xorg ttf-ubuntu-font-family xsel \
  xclip slim pavucontrol unzip archiver par atool zathura-pdf-mupdf fd \
  fzf dust gotop duf sd tealdeer tokei procs bat tree hyperfine gdb cgdb \
  ffmpegthumbnailer xz gc-devel libedit libedit-devel chromium \
  python3-devel python3-pip tlp jq pamixer dunst  \
  newsboat xcb-util-wm poppler-utils poppler pcmanfm tumbler lsof ripgrep \
  picom starship gtk+3 gtk+3-devel gtk-engine-murrine \
  libX11-devel libXft-devel libXinerama-devel


# Enabling important services

echo "Enabling important services..."
declare services=("
        /etc/sv/acpid
        /etc/sv/chronyd
        /etc/sv/dbus
        /etc/sv/dhcpcd
        /etc/sv/elogind
        /etc/sv/polkitd
        /etc/sv/sshd
        /etc/sv/udevd
        /etc/sv/wpa_supplicant
        ")

for service in $services; do
        sudo ln -s $service /var/service
done


# Clone and install dwm, st, dwmblocks and dmenu
cd ~/.local/share
for app in dwm dwmblocks, dotfiles, walls; do
    git clone "https://github.com/notxkcd/$app"
    cd "$app"
    make
    sudo make clean install
    cd ..
done

for app in dotfiles, walls; do
  git clone "https://github.com/notxkcd/$app"
done

# Create DWM session file in XDG directory
echo "Creating DWM session"
echo "[Desktop Entry]
Encoding=UTF-8
Name=DWM
Exec=dwm
Icon=dwm
Type=XSession" | sudo tee "/usr/share/xsessions/dwm.desktop"

# Symlinking dotfiles
echo "Symlinking dotfiles with stow"
cd ~/.local/share/dotfiles
stow -v -t ~ ./

echo "Installation is now complete. You can now logout and change your DE/WM."

  #alsa-plugins \ #Audio
  #notmuch-mutt notmuch urlview lynx isync msmtp pass  \
  #hugo go openntpd\
  #disown - alternative to nohup.


