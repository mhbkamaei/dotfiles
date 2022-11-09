#!/bin/bash

tools="growisofs tmux zoxide fzf fd-find firefox-esr"
tree-sitter="gcc g++ libstdc++-12-dev npm"
utills="unzip neovim kitty stow exa ranger xdotool brightnessctl pip uget aria2"
zsh="zsh zsh-antigen"
xorg="xserver-xorg-core xserver-xorg-input-libinput xinit xclip lightdm slick-greeter x11-xserver-utiles"
wm="sxhkd picom feh bspwm dunst polybar"

sudo apt update

sudo apt upgrade -y

sudo apt install $tools         --no-install-recommends --no-install-suggests -y
sudo apt install $tree-sitter   --no-install-recommends --no-install-suggests -y
sudo apt install $xorg          --no-install-recommends --no-install-suggests -y
sudo apt install $zsh           --no-install-recommends --no-install-suggests -y
sudo apt install $utills        --no-install-recommends --no-install-suggests -y
sudo apt install $wm            --no-install-recommends --no-install-suggests -y

mkdir $HOME/.config $HOME/.local/bin -p
ln -s $(which fdfind) $HOME/.local/bin/fd
ln -s $(which batcat) $HOME/.local/bin/bat

chsh hbb -s /bin/zsh
