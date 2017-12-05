# f5-ansible-ts
Materials for Tech Summit Ansible Class

## Introduction to Ansible
This introductory class covers the following topics:
  * Introduction to the Ansible Automation Tool
  * Introduction to YAML
  * Introduction to Ansible's variables
  * High Availabilty with Ansible

## Lab Topology and environment
We are leveraging the Introduction to Automation & Orchestration Lab

The Lab Topology and Environment Information Can be found at:
[Lab Topology and Environment](http://clouddocs.f5.com/training/community/programmability/html/class1/labinfo/labinfo.html)

Directions to startup and login to the UDF demo environment can be found at:
[F5 Unified Demo Framework(UDF)](http://clouddocs.f5.com/training/community/programmability/html/class1/labinfo/udf.html)

## Launch Docker Container on the Linux Server

```
cd /home/ubuntu; wget https://raw.githubusercontent.com/mcgonagle/f5-ansible-ts/master/misc/user_repos.json
```

## [user_repos.json](misc/user_repos.json)
```
{
  "repos": [
    {
      "name":"f5-ansible-ts",
      "repo":"https://github.com/mcgonagle/f5-ansible-ts.git",
      "branch":"master",
      "skip":false,
      "skipinstall":true
    }
  ]
}
```

## [F5 Super NetOps/DevOps Tools Container](https://hub.docker.com/r/f5devcentral/f5-super-netops-container/)

```
sudo docker run -p 8080:80 -p 2222:22 --rm -it -v /home/ubuntu/user_repos.json:/tmp/user_repos.json -e SNOPS_GH_BRANCH=develop f5devcentral/f5-super-netops-container:develop-ansible
```

## Overview of the Ansible Environment

* ansible.cfg - Ansible config file
* group_vars - Place to store variables applicable to groups such as data centers
* host_vars - Place to store variables specific to hosts
* hosts - Hosts inventory list
* password.yml - ansible-vault password file, password to unlock is "password"
* playbooks - Ansible playbooks of "plays" for interacting with our BIG-IP systems
* roles - More organized than playbooks
* run_ansible.sh - Shell helper script for running playbooks


## YAML Overview 
### Useful vimrc macro for editing YaML files
```
autocmd FileType yaml setlocal ai ts=2 sw=2 et colorcolumn=1,3,5,7,9,11,13 nu
```
### To turn off colorized lines
```
set cc=
```

## Onboarding - Configuring VLAN and Self-IPs
./run_ansible.sh -i

## Lab 1  - Instantiate a VIP, Pool, Node with Playbook Variables
./run_ansible.sh -1

## Variables and Roles Lab
[Ansible Variables and their Precedence](docs/VARIABLES.md)

./run_ansbile -v

## iRules with variable Templating

./run_ansible --irule

## iApps with variable Templating

./run_ansible --iapp

## HA Demo

ansible-playbook playbooks/create_HA.yml --ask-vault-pass -e @password.yml -vvv

## App SVCS iApp with variable Templating
## License
### GNU LESSER GENERAL PUBLIC LICENSE 
### Version 3, 29 June 2007
