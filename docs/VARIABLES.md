## What makes a good variable name
Variable names should be letters, numbers, and underscores. Variables should always start with a letter.
*foo_port* is a great variable. *foo5* is fine too.

*foo-port*, *foo port*, *foo.port* and 12 are not valid variable names.

YAML also supports dictionaries which map keys to values. For instance:

```
foo:
  field1: one
  field2: two
```

You can reference a specific field in the dictionary using either bracket notation or dot notation:
```
foo['field1']
foo['field2']
```

We will be using dictionaries in our variable files.


## Ansible 2.x Order of Variable Precedence

* role defaults
* inventory INI or script group vars
* inventory group_vars/all
* playbook group_vars/all
* inventory group_vars/*
* playbook group_vars/*
* inventory INI or script host vars
* inventory host_vars/*
* playbook host_vars/*
* host facts
* play vars
* play vars_prompt
* play vars_files
* role vars (defined in role/vars/main.yml)
* block vars (only for tasks in block)
* task vars (only for the task)
* role (and include_role) params
* include params
* include_vars
* set_facts / registered vars
* extra vars (always win precedence)
