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

Once launched and logged into via RDP, please do the following:

## YAML Syntax Overview

[YAML Syntax Overview](https://learn.getgrav.org/advanced/yaml)

## Module Documentation

[Ansible Module Documents Used in this Collection](docs/MODULES.md)

## Social Coding with Github

[![Social Coding with Github](https://img.youtube.com/vi/vTiINnsHSc4/0.jpg)](https://youtu.be/vTiINnsHSc4 "Social Coding with Github")


## Useful vimrc macro for editing YaML files
```
autocmd FileType yaml setlocal ai ts=2 sw=2 et colorcolumn=1,3,5,7,9,11,13 nu
```
### To turn off colorized lines
```
set cc=
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
docker run -p 8080:80 -p 2222:22 --rm -it -v /home/ubuntu/user_repos.json:/tmp/user_repos.json -e SNOPS_GH_BRANCH=develop f5devcentral/f5-super-netops-container:develop-ansible
```

## Running the Ansible Code
This Ansible code base comes with a shell helper script that runs the playbooks. 
```
$ANSIBLE_HOME_DIRECTORY/run_ansible.sh --all
$ANSIBLE_HOME_DIRECTORY/run_ansible.sh --onboarding
$ANSIBLE_HOME_DIRECTORY/run_ansible.sh --operation
$ANSIBLE_HOME_DIRECTORY/run_ansible.sh --teardown
```

## Ansible Variable Precedence

[Ansible 2.x Order of Variable Precedence](docs/PRECEDENCE.md)

## Ansible Vault
This code base leverages the ansible vault tool and includes an encrypted password protected file. 
To edit the username and password run:
```
ansible-vault edit password.yml
```
The password for the password file is *password*

## Ansible Roles
This ansible repository is organized into roles. Roles are collections of templates, files, tasks,
and variables. Tasks are organized based on the particular module they are implementing. For example,
the bigip_device_ntp module is a subdirectory under the onboarding role and has a task 
set_ntp.yml (*roles/tasks/bigip_device_ntp/set_ntp.yml*).

## Ansible Playbooks
The playbooks in in the ansible playbook directory include the roles.

```
$ANSIBLE_HOME_DIRECTORY/site.yml
$ANSIBLE_HOME_DIRECTORY/playbooks/onboarding.yml
$ANSIBLE_HOME_DIRECTORY/playbooks/operation.yml
$ANSIBLE_HOME_DIRECTORY/playbooks/teardown.yml
$ANSIBLE_HOME_DIRECTORY/playbooks/today.yml
```

## Ansible Library
Includes the BigIP Modules and distributes them for use. 

[F5 Network's Ansible Modules](https://github.com/F5Networks/f5-ansible/tree/devel/library)

## Infrastructure as Code Principles, Practices and Patterns
[Infrastructure as Code Benefits](docs/IAC.md)

## Infrastructure 2.0 as Code (I2aC) Blog 
[Infrastructure 2.0 as Code (I2aC) Blog ](https://github.com/f5devcentral/i2ac)

## License
### GNU LESSER GENERAL PUBLIC LICENSE 
### Version 3, 29 June 2007

