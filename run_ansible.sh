#!/bin/bash

while test $# -gt 0; do
        case "$1" in
                -h|--help)
                        echo " "
                        echo "options:"
                        echo "-h, --help                show brief help"
                        echo "-1, --lab1                run the lab1 playbook"
                        echo "-v, --variables           run the operation playbook"
                        exit 0
                        ;;
                -1)
                        shift
                        ansible-playbook playbooks/lab1.yml --ask-vault-pass -e @password.yml -vvv 
                        shift
                        ;;
                --lab1*)
                        ansible-playbook playbooks/lab1.yml --ask-vault-pass -e @password.yml -e state="present" -vvv 
                        shift
                        ;;
                -v)
                        ansible-playbook playbooks/variables.yml --ask-vault-pass -e @password.yml -e state="present" -vvv 
                        shift
                        ;;
                --variables*)
                        ansible-playbook playbooks/variables.yml --ask-vault-pass -e @password.yml -e state="present" -vvv 
                        shift
                        ;;
                -t)
                        ansible-playbook playbooks/operations.yml --ask-vault-pass -e @password.yml -e state="absent" -vvv 
                        shift
                        ;;
                -teardown*)
                        ansible-playbook playbooks/operations.yml --ask-vault-pass -e @password.yml -e state="absent" -vvv 
                        shift
                        ;;
                *)
                        break
                        ;;
        esac
done
