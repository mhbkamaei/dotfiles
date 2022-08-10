#!/bin/bash

cp sources.list /etc/apt/

packages="sudo git neovim sxhkd zsh xserver-xorg-core xinit"

apt update
apt upgrade -y
apt install $packages -y
