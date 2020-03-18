  #!/usr/bin/env sh

# COLOR VARIABLES
#----------------------------
C_RED=$(tput setaf 1)
C_GREEN=$(tput setaf 2)
C_YELLOW=$(tput setaf 3)
C_BLUE=$(tput setaf 4)
C_LIGHT_GREY="\033[0;37m"

C_BOLD=$(tput bold)
C_REVERSE=$(tput rev)
C_RESET=$(tput sgr0)

print_section() {
  echo "${C_YELLOW} => ${1} ...${C_RESET}"
}

print_section "Check Git"
git --version

print_section "Check Nginx"
nginx --version

print_section "Check MySQL"
mysql --version

print_section "Check PHP version"
php -v
composer --version

print_section "Check NVM installs"
. ~/.nvm/nvm.sh
nvm list