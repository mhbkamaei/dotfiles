#!/bin/bash

cp sources.list /etc/apt/

packages="stow bash-completion kitty lightdm sudo git sxhkd picom nitrogen zsh xserver-xorg-core xinit slick-greeter awesome"

wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb
apt install ./nvim-linux64.deb

apt update
apt upgrade -y
apt install $packages -y
mv /root/dotfiles /home/hbb/
chown -R hbb:hbb /home/hbb
stow --verbose --adopt --dir=/home/hbb/dotfiles/ --target=/home/hbb/ .
chown -R /home/hbb
