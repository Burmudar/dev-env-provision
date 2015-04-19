___Ansible script to install required software and configure environment___

### Requirements:
	* Ansible

### Usage:
To run the ansible script execute: ```ansible-playbook -K playbooks/main.yml```


### The environment is provisioned with the following software:
	* Java 8
	* vim
	* zsh
	* Mercurial
    * Build-essential
    * Git
    * Firefox
    * Chromium
    * GNU Stow
    * VLC

### The following tools are downloaded, built and added to the path:
    * golang
    * gradle
    * nodejs

## Dotfiles 
Dotfiles are fetch from ```https://github.com/Burmudar/dotfiles``` and then linked with GNU Stow to the home directory

## IntelliJ
IntelliJ is downloaded and extracted to the programming/tools directory



