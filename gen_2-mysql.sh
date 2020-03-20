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



# Install MySql
print_section "Install MySQL"
sudo apt install mysql-server -y


# Create my basic users
print_section "Create basic users"
sudo mysql -u root -e "CREATE USER 'iosif'@'localhost' IDENTIFIED BY ''; GRANT ALL PRIVILEGES ON * . * TO 'iosif'@'localhost'; FLUSH PRIVILEGES;"
sudo mysql -u root -e "CREATE USER 'laravel'@'localhost' IDENTIFIED BY ''; GRANT ALL PRIVILEGES ON * . * TO 'laravel'@'localhost'; FLUSH PRIVILEGES;"
sudo mysql -u root -e "CREATE USER 'node'@'localhost' IDENTIFIED BY ''; GRANT ALL PRIVILEGES ON * . * TO 'node'@'localhost'; FLUSH PRIVILEGES;"
sudo mysql -u root -e "SELECT host, user, authentication_string FROM mysql.user;"

# Install other Stuff
print_section "Install Tweaks"
sudo apt install mysqltuner -y