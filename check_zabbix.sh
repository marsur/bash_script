#!/bin/bash


for server in $(cat $PWD/servers.txt)

do 

ssh root@$server zabbix_agentd -V | head -n 1 || zabbix_agent2 -V | head -n 1 >> servery.txt ; ssh root@$root hostname -f >> servery.txt

done 

date 
