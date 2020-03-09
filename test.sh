  #!/usr/bin/env bash

C_YELLOW=$(tput setaf 3)
C_RESET=$(tput sgr0)

echo "${C_YELLOW}Check NVM installs...${C_RESET}"
nvm list