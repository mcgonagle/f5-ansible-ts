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

## Variables
## Ansible Variables

[Ansible Variables and their Precedence](docs/VARIABLES.md)

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

## Ansible Vault
This code base leverages the ansible vault tool and includes an encrypted password protected file. 
To edit the username and password run:
```
ansible-vault edit password.yml
```
The password for the password file is *password*

## License
### GNU LESSER GENERAL PUBLIC LICENSE 
### Version 3, 29 June 2007

