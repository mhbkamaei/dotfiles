#!/bin/bash

packages="unzip neovim kitty vim stow zsh lightdm sxhkd picom feh xserver-xorg-core xinit slick-greeter bspwm dmenu"

apt update
apt upgrade -y
apt install $packages --no-install-recommends --no-install-suggests -y
apt install ../lsd_0.22.0._amd64.deb
