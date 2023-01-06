#!/bin/bash

echo "Please username"

read meno



for server in $(cat $PWD/list.txt)
do

# to StrictHostKeyChecking znamena, aby sa nepytal, ci verime spravnemu fingerprintu

        if ssh  -o StrictHostKeyChecking=no $meno@$server "true"
        then

# pokial sa pripoji, vypise hlasku, OK
		echo "user $meno $server: ok" >> ok.txt
		 

        else

# pokial sa pripoji, vypise hlasku, failed
		
       echo "user  $meno $server: failed" >> nepripojilo.txt
	    
fi


done


exit
