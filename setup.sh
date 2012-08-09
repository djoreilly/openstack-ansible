#!/bin/bash
# Setup and launch an instance
source playbooks/openrc
nova secgroup-add-rule default tcp 22 22 0.0.0.0/0
nova secgroup-add-rule default icmp -1 -1 0.0.0.0/0
nova keypair-add --pub_key ~/.ssh/id_rsa.pub mykey
nova boot cirros --flavor 1 --image cirros-0.3.0-x86_64
watch -n1 cirros