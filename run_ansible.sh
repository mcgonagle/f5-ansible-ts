#!/bin/bash

while test $# -gt 0; do
        case "$1" in
                -h|--help)
                        echo " "
                        echo "options:"
                        echo "-h, --help                show brief help"
                        echo "-i, --ip                  run the self ip and vlan configuration playbook"
                        echo "-1, --lab1                run the lab1 playbook"
                        echo "-v, --variables           run the operation playbook"
                        exit 0
                        ;;
                -i)
                        shift
                        ansible-playbook playbooks/ip_vlan.yml --ask-vault-pass -e @password.yml -vvv 
                        shift
                        ;;
                --ip*)
                        shift
                        ansible-playbook playbooks/ip_vlan.yml --ask-vault-pass -e @password.yml -e state="present" -vvv 
                        shift
                        ;;
                --ir*)
                        shift
                        ansible-playbook playbooks/irules.yml --ask-vault-pass -e @password.yml -e state="present" -vvv 
                        shift
                        ;;
                -1)
                        shift
                        ansible-playbook playbooks/lab1.yml --ask-vault-pass -e @password.yml -vvv 
                        shift
                        ;;
                --lab1*)
                        shift
                        ansible-playbook playbooks/lab1.yml --ask-vault-pass -e @password.yml -e state="present" -vvv 
                        shift
                        ;;
                -v)
                        shift
                        ansible-playbook playbooks/variables.yml --ask-vault-pass -e @password.yml -e state="present" -vvv 
                        shift
                        ;;
                --variables*)
                        shift
                        ansible-playbook playbooks/variables.yml --ask-vault-pass -e @password.yml -e state="present" -vvv 
                        shift
                        ;;
                -t)
                        shift
                        ansible-playbook playbooks/variables.yml --ask-vault-pass -e @password.yml -e state="absent" -vvv 
                        shift
                        ;;
                --teardown*)
                        shift
                        ansible-playbook playbooks/variables.yml --ask-vault-pass -e @password.yml -e state="absent" -vvv 
                        shift
                        ;;
                *)
                        break
                        ;;
        esac
done
