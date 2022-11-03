#!/bin/bash

tools="growisofs zoxide fzf"
utills="unzip neovim kitty stow exa ranger xdotool brightnessctl pip uget aria2"
zsh="zsh zsh-antigen"
xorg="xserver-xorg-core xserver-xorg-input-libinput xinit xclip lightdm slick-greeter"
wm="sxhkd picom feh bspwm dunst polybar"

sudo apt update
sudo apt upgrade -y
sudo apt install $tools   --no-install-recommends --no-install-suggests -y
sudo apt install $xorg   --no-install-recommends --no-install-suggests -y
sudo apt install $zsh    --no-install-recommends --no-install-suggests -y
sudo apt install $utills --no-install-recommends --no-install-suggests -y
sudo apt install $wm     --no-install-recommends --no-install-suggests -y

chsh hbb -s /bin/zsh

