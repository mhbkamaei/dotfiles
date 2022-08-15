#!/bin/bash

packages="unzip neovim vim stow zsh lightdm sxhkd picom feh xserver-xorg-core xinit slick-greeter bspwm dmenu"

apt update
apt upgrade -y
apt install $packages -y
apt install ./lsd_0.22.0._amd64.deb
stow --verbose --adopt --dir=/home/hbb/dotfiles/ --target=/home/hbb/ .
