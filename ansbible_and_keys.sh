#!/bin/bash

#install ansible and ssh keys distributed

# install ansible

 echo "start scripting" >> log.txt ;  date>> log.txt

yum install epel-release -y

yum update -y

yum install ansible -y

# we have to rest

sleep 60

# generating ssh keys and distributed to others servers

# generating ssh keys without passphrase


ssh-keygen -b 2048 -t rsa -f /root/.ssh/id_rsa  -q -N ""


# distribute to servers


for server in $(cat $PWD/servers.txt )

do ssh-copy-id $server

done

sleep

echo "stop scripting" >> log.txt ; date>> log.txt
