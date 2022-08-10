#!/bin/bash

cp sources.list /etc/apt/

packages="lightdm sudo git neovim sxhkd picom nitrogen zsh xserver-xorg-core xinit slick-greeter"

apt update
apt upgrade -y
apt install $packages -y
