#!/usr/bin/env bash

# System updates
sudo apt update -y -qq
sudo apt upgrade -y -qq
sudo apt dist-upgrade -y -qq

# System software
sudo apt install build-essential libssl-dev libpng-dev -y -qq
sudo apt install curl snapd -y -qq

# Git Install & Config
sudo apt install git -y -qq
git config --global user.email "dev@iosifv.com"
git config --global user.name "Iosif V."
git config --global core.autocrlf false

# Nginx
sudo apt install nginx -y -qq

# MySql
sudo apt install mysql-server mysqltuner -y -qq

# PHP
sudo apt install php -y -qq
# sudo apt install php7.3 -y -qq
# sudo apt install php7.2-xml php7.2-mbstring php7.2-mysql php7.2-sqlite3 php7.2-simplexml php7.2-curl php7.2-zip -y -qq
sudo apt install php-xml php-mbstring php-mysql php-sqlite3 php-simplexml php-curl php-zip php-gd -y -qq

curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer -y -qq
sudo chown -R $USER ~/.composer/

sudo apt install phpunit

# Node.JS
sudo apt install npm -y -qq
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install v6.17.1  # LTS
nvm install v8.16.1  # LTS
nvm install v10.16.3 # LTS
nvm install v12.11.0 # not LTS
nvm alias default 10
nvm list

npm i -g grunt grunt-cli gulp webpack documentation
npm i -g express pm2 nodemon serverless

# Python
sudo apt install python-pip python3-pip -y -qq
export PATH=$PATH:~/home/iosif/.local/bin

# AWS
pip3 install --upgrade --user awscli

# rClone
curl https://rclone.org/install.sh | sudo bash

# Tools
sudo apt install dos2unix -y -qq  # CRLF stuff
sudo apt install xclip -y -qq     # copy stuff to clipboard
sudo apt install ncdu -y -qq      # Analyze disk usage
sudo apt install tmux -y -qq      # Terminal multiplexer
sudo apt install ack -y -qq       # Great search tool
sudo apt install mc -y -qq        # Midnight Commander
sudo apt install multitail -y -qq # Multiple tails in one feed
sudo apt install yarn -y -qq      # Yet another Dependency manager
sudo apt install zsh -y -qq       # Needed for oh-my-zsh
sudo apt install qalc -y -qq      # Amazing Qualculator
sudo apt install cloc -y -qq      # Counts lines of code
sudo pip3 install thefuck -y -qq  # In case you fuck it up :)
sudo pip3 install pygments -y -qq # Pygmentyze your output
sudo apt install ranger -y -qq    # Alternatives to the midnight commander. 
sudo apt install tig -y -qq       # A console UI for GIT

# Controll your cloud with rclone
curl https://rclone.org/install.sh | sudo bash

# Youtube Downloader
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && sudo chmod a+rx /usr/local/bin/youtube-dl

# Bat = cat with wings
curl -sLO https://github.com/sharkdp/bat/releases/download/v0.12.1/bat_0.12.1_amd64.deb && sudo dpkg -i bat_0.12.1_amd64.deb && rm bat_0.12.1_amd64.deb

# Monitoring
sudo apt install htop -y -qq
sudo npm i -g gtop
sudo apt install nmon -y -qq && export NMON=clmnd
sudo apt install speedtest-cli -y -qq
sudo apt install glances -y -qq
sudo apt install speedometer -y -qq
sudo apt install powertop -y -qq      # Helps conserve power on Linux

# Fun Stuff
sudo apt install cowsay fortune lolcat -y -qq
sudo apt install screenfetch -y -qq # Shows system information with nice graphics
sudo apt install inxi -y -qq        # Shows system information condensed in 2 lines
sudo apt install ansiweather -y -qq # Shows brief information about the weather
sudo npm install bitcoin-chart-cli -gy # Cryptocurrency charts
sudo apt install cmatrix -y -qq     # Find out how deep the rabbit hole goes

# Status of the tube
sudo wget https://raw.githubusercontent.com/smallwat3r/tubestatus/master/src/tubestatus -P /usr/local/bin && sudo chmod 755 /usr/local/bin/tubestatus


## Things to do at the end
# aws configure ====>>> Not needed any more as silence takes care of this
# sudo mysql_secure_installation

# Install oh-my-zsh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# !! This needs to be the last thing as the installer reloads the shell !!
# !!   The default shell will only change after you log-out and log-in  !!
