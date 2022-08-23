#!/usr/bin/env bash

# COLOR VARIABLES
#----------------------------
C_RED=$(tput setaf 1)
C_GREEN=$(tput setaf 2)
C_YELLOW=$(tput setaf 3)
C_RESET=$(tput sgr0)

# Printing Functions
#----------------------------
print_section() {
    echo ""
    echo "${C_YELLOW} => ${1} ${C_RESET}"
    echo "${C_YELLOW}=========================${C_RESET}"
}

print_status() {
    echo ""
    echo "${C_YELLOW} - ${1} ${C_RESET}"
}

# System updates
print_section "System updates"
sudo apt update -y -qq
sudo apt upgrade -y -qq
sudo apt dist-upgrade -y -qq


# System software
print_section "System software"
sudo apt install build-essential libssl-dev libpng-dev -y -qq
sudo apt install curl snapd -y -qq


# Git Install & Config
print_section "Git Install & Config"
sudo apt install git -y -qq
git config --global user.email "dev@iosifv.com"
git config --global user.name "Iosif V."
git config --global core.autocrlf false


# Nginx
print_section "Nginx"
sudo apt install nginx -y -qq


# PHP
print_section "PHP"
sudo apt install php -y -qq
print_status "PHP Extensions"
sudo apt install php-xml php-mbstring php-mysql php-sqlite3 -y -qqq
sudo apt install php-simplexml php-curl php-zip php-gd -y -qqq
sudo apt install phpunit -y -qq

print_status "Composer"
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer -y -qq
sudo chown -R $USER ~/.composer/


# Node.JS
print_section "Node.JS"
sudo apt install npm -y -qq
export npm_config_loglevel=silent
print_status "Install NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash >> /dev/null
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

print_status "Installing LTS Node v6, v8, v10, v12"
nvm install v14.20.0  >> /dev/null # LTS
nvm install v16.17.0  >> /dev/null # LTS
nvm install v18.7.0  >> /dev/null # LTS
nvm alias default 16
nvm list

print_status "npm i -g"
npm i -g webpack documentation
npm i -g express pm2 nodemon serverless

# Python
print_section "Python"
sudo apt install python-pip python3-pip -y -qq
export PATH=$PATH:~/home/iosif/.local/bin

# Tools
print_section "Tools"
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
sudo pip3 install pygments -qq    # Pygmentyze your output
sudo apt install ranger -y -qq    # Alternatives to the midnight commander. 
sudo apt install tig -y -qq       # A console UI for GIT
# Bat = cat with wings
curl -sLO https://github.com/sharkdp/bat/releases/download/v0.12.1/bat_0.12.1_amd64.deb && sudo dpkg -i bat_0.12.1_amd64.deb && rm bat_0.12.1_amd64.deb
# In case you fuck it up :)
sudo pip3 install thefuck -qq
fuck >> /dev/null
fuck >> /dev/null

# Monitoring
print_section "Monitoring"
sudo apt install htop -y -qq
sudo npm i -g gtop
sudo apt install nmon -y -qq && export NMON=clmnd
sudo apt install speedtest-cli -y -qq
sudo apt install glances -y -qq
sudo apt install speedometer -y -qq
sudo apt install powertop -y -qq      # Helps conserve power on Linux
## Bashtop
echo "deb http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list
wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -
sudo apt update
sudo apt install bashtop

# Cloud
print_section "Cloud"
pip3 install --upgrade --user awscli -q
curl https://rclone.org/install.sh | sudo bash


# Fun Stuff
print_section "Fun Stuff"
sudo apt install cowsay fortune lolcat -y -qq
sudo apt install screenfetch -y -qq # Shows system information with nice graphics
sudo apt install inxi -y -qq        # Shows system information condensed in 2 lines
sudo apt install ansiweather -y -qq # Shows brief information about the weather
sudo npm install bitcoin-chart-cli -gy # Cryptocurrency charts
sudo apt install cmatrix -y -qq     # Find out how deep the rabbit hole goes
# Youtube Downloader
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && sudo chmod a+rx /usr/local/bin/youtube-dl
# Status of the tube
sudo wget https://raw.githubusercontent.com/smallwat3r/tubestatus/master/tubestatus -P /usr/local/bin && sudo chmod 755 /usr/local/bin/tubestatus

# Install oh-my-zsh
print_section "Install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# !! This needs to be the last thing as the installer reloads the shell !!
# !!   The default shell will only change after you log-out and log-in  !!
