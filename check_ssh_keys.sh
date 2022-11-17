#!/bin/bash


for server in $(cat $PWD/list.txt)
do

# to StrictHostKeyChecking znamena, aby sa nepytal, ci verime spravnemu fingerprintu

        if ssh  -o StrictHostKeyChecking=no root@$server "true"
        then

# pokial sa pripoji, vypise hlasku, OK
		echo "server $server: ok" >> ok.txt
		 

        else

# pokial sa pripoji, vypise hlasku, failed
		
       echo "server $server: failed" >> nepripojilo.txt
	    
fi


done


exit
