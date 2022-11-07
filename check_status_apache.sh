#!/bin/bash


for server in $(cat $PWD/servers.txt)


do ssh root@$server apachectl status | sed -n 3p

done

exit

