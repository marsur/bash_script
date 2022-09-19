#!/bin/bash


# skript for checking ssh

# list.txt is file the where are saved the servers (hostnames or IP addresses)


for server in $(cat $PWD/list.txt)
do

# to StrictHostKeyChecking=no == not checking keys (where )

        if ssh  -o StrictHostKeyChecking=no root@$server "true"
        then

# for clear conneaction, hostanmes which are ok ---> ok.txt
                echo "server $server: ok"   >> ok.txt

        else

# for problems with connection (network, routing, permissions, ssh keys, firewall)

       echo "server $server: failed" >> no_ok.txt

fi

done



#when no ok is exists, you have to send ssh keys to other servers via ssh-copy-id
if test -e $PWD/no_ok.txt

then

echo zadaj server

read server1

ssh-copy-id root@$server1



else

echo "everything fine....You can satirize to stupid colleagues who write scripts which breaks the rocks in the mountains"

fi


rm -rf $PWD/no_ok.txt



