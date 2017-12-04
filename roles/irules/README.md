iRules
=========
A role for operating an F5 BigIP device. Sets up an iRule

Requirements
------------
f5-sdk
bigsuds
suds
deepdiff
requests
netaddr
parimkiko

Role Variables
--------------

Dependencies
------------
None

Example Playbook
----------------

    - hosts: all
      gather_facts: False
      roles:
        - irule

License
-------
Apache V2.0

Author Information
------------------
Thomas A. McGonagle (t.mcgonagle@f5.com)
