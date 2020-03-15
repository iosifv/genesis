#!/usr/bin/env bash

# Cool new terminal
sudo apt install kitty -y -qq
cd $HOME
git clone https://github.com/adi1090x/kitty-cat
cd kitty-cat
./install
cd $HOME

# Terminal Overload
sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt install alacritty -y -qq

# Glorious Snaps
sudo snap install docker postman
sudo snap install aws-cli --classic
sudo snap install code    --classic
sudo snap install cointop --stable

# Snaps not needed in case of Virtual machine
sudo snap install spotify caprine snap-store vlc gitkraken chromium
sudo snap install slack   --classic
sudo snap install phpstorm --classic
sudo snap install webstorm --classic