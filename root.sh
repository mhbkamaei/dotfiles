#!/bin/bash

tools="growisofs"
utills="unzip neovim kitty stow exa ranger xdotool brightnessctl pip uget aria2 fzf"
zsh="zsh zsh-antigen"
xorg="xserver-xorg-core xserver-xorg-input-libinput xinit xclip lightdm slick-greeter"
wm="sxhkd picom feh bspwm rofi dunst polybar"

apt update
apt upgrade -y
apt install $tools   --no-install-recommends --no-install-suggests -y
apt install $xorg   --no-install-recommends --no-install-suggests -y
apt install $zsh    --no-install-recommends --no-install-suggests -y
apt install $utills --no-install-recommends --no-install-suggests -y
apt install $wm     --no-install-recommends --no-install-suggests -y

chsh hbb -s /bin/zsh
