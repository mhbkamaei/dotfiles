#!/bin/bash

packages="unzip neovim vim stow zsh lightdm sxhkd picom feh xserver-xorg-core xinit slick-greeter bspwm dmenu"

apt update
apt upgrade -y
apt install $packages -y
apt install .
stow --verbose --adopt --dir=/home/hbb/dotfiles/ --target=/home/hbb/ .
