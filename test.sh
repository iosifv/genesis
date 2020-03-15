  #!/usr/bin/env bash

C_YELLOW=$(tput setaf 3)
C_RESET=$(tput sgr0)

echo "${C_YELLOW}Check Git...${C_RESET}"
git --version
# git config --global --list

echo "${C_YELLOW}Check Nginx...${C_RESET}"
nginx --version

echo "${C_YELLOW}Check MySQL...${C_RESET}"
mysql --version

echo "${C_YELLOW}Check PHP version...${C_RESET}"
php -v
composer --version

echo "${C_YELLOW}Check NVM installs...${C_RESET}"
. ~/.nvm/nvm.sh
nvm list