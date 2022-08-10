#!/bin/bash

cp sources.list /etc/apt/

packages="sudo git neovim sxhkd zsh xserver-xorg-core"

apt update
apt upgrade -y
apt install $packages -y
