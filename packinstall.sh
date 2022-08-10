#!/bin/bash

cp sources.list /etc/apt/

packages="stow kitty lightdm sudo git neovim sxhkd picom nitrogen zsh xserver-xorg-core xinit slick-greeter awesome"

apt update
apt upgrade -y
apt install $packages -y
mv /root/dotfiles /home/hbb/
chown -R hbb:hbb /home/hbb
stow --verbose --adopt --dir=/home/hbb/dotfiles/ --target=/home/hbb/ .
chown -R /home/hbb
