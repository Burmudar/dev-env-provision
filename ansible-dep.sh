echo ''
tput bold
tput setaf 5
echo '[ Install Desktop boostrap requirements ]'
tput setaf 2
echo '* Installing curl'
tput sgr0

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  sudo apt-get install curl
elif [[ "$OSTYPE" == "darwin*" ]]; then
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
  sudo apt-get install ansible
elif [[ "$OSTYPE" == "darwin*" ]]; then
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
ansible-playbook -K playbooks/main.yml -i local-inventory
tput sgr0
tput setaf 2
tput bold
echo '* Done *'
tput sgr0
echo ''
