#!/bin/bash

utills="unzip neovim kitty vim stow"
zsh="zsh zsh-antigen zsh-complition zsh-highlight"
xorg="xserver-xorg-core xinit lightdm slick-greeter"
wm="sxhkd picom feh bspwm rofi"

apt update
apt upgrade -y
apt install $xorg   --no-install-recommends --no-install-suggests -y
apt install $zsh    --no-install-recommends --no-install-suggests -y
apt install $utills --no-install-recommends --no-install-suggests -y
apt install $wm     --no-install-recommends --no-install-suggests -y
apt install ../lsd_0.22.0._amd64.deb
