#!/bin/bash
echo ''
tput bold
tput setaf 5
echo '[ Install Desktop boostrap requirements ]'
tput setaf 2
echo '* Installing curl'
tput sgr0

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    
    if [ -f /usr/bin/apt ]; then
        sudo apt-get install curl
    elif [ -f /usr/bin/pacman ]; then
        sudo pacman -Syu curl
    fi

elif [[ "$OSTYPE" == "darwin"* ]]; then
  brew install curl
else
  tput setaf 1
  echo "Your platform isn't supported in this script"
  tput sgr0
  exit 1
fi
tput bold
tput setaf 2
echo '* Install Ansible';
tput sgr0
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    if [ -f /usr/bin/apt ]; then
        sudo apt-get install ansible
    elif [ -f /usr/bin/pacman ]; then
        sudo pacman -Syu ansible
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
  brew install ansible
else
  tput setaf 1
  echo "Your platform isn't supported by this script"
  tput sgr0
  exit 1
fi
tput bold
tput setaf 2
echo '* Run Desktop Boostrap Playbook';
if [ -f /usr/bin/pacman ]; then
    ansible-playbook -K playbooks/main.yml -i arch-inventory
else
    ansible-playbook -K playbooks/main.yml -i local-inventory
fi
tput sgr0
tput setaf 2
tput bold
echo '* Done *'
tput sgr0
echo ''
