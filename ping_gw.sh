
# spravit ping gw: (bud je a hodi do ok.txt alebo neni a hodi do neni.txt)

awk '{print $3}' routy.txt | egrep -v [a-z] > routy2.txt 

#/bin/bash 
 while read ip
 do ping -c 3 $ip
 done  < /root/servers
