#!/usr/bin/env bash

# Terminal - kitty
sudo apt install kitty -y -qq
cd $HOME
git clone https://github.com/adi1090x/kitty-cat
cd kitty-cat
./install
cd $HOME

# Terminal - alacritty
sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt install alacritty -y -qq

# Dev
sudo snap install docker
sudo snap install postman
sudo snap install gitkraken
sudo snap install code     --classic
sudo snap install phpstorm --classic
sudo snap install webstorm --classic
# sudo snap install aws-cli --classic

# Media
sudo snap install spotify
sudo snap install opera
sudo snap install chromium

# Social
sudo snap install caprine           # Facebook GUI
sudo snap install wrapup            # Whatsup GUI
sudo snap install cordless          # Discord CLI
sudo snap install slack --classic
sudo snap install vlc

# Tools
sudo snap install cointop --stable
sudo snap install authy   --beta