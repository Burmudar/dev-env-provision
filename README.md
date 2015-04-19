___Vagrant setup for Heavy Rebel Moose Development environment___

### Requirements:
	* Virtualbox
	* Vagrant 1.6.3
	* Ansible

### The virtual machine that is provisioned has the following installed:
	* Linux
	* PHP-FHM
	* NGinx
	* Laravel

### Usage:
1. Before you ``` vagrant up ``` first checkout the heavy-rebel-moose project to the project directory as per the example:
    ``` hg clone https://bitbucket.org/gswart/heavy-rebel-moose project/rebel-moose/```
2. Then in playbooks/templates. Modify the nginx config to use your cloned project’s directory as root. As per the example above, the nginx config is set to use rebel-moose as root.
3. You should be ready now to have your development environment provisioned. Run ```vagrant up```

If your environment has already been provisioned then:

1. ssh into the environment with ```vagrant ssh```
2. Navigate to /etc/nginx/conf.d/
3. Modify the config to point to your new root


