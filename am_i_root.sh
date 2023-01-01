#!/bin/bash

# Am I root? 

whoami > who.txt

echo he he he, zasa mi to nevyslo


cat who.txt | grep root > ci_pana_jake_tazke_root.txt

if test -z ci_pana_jake_tazke_root.txt

then

echo "It's not root user. Please burnself!"

else 

echo "wtf? Are you crazy?" 

fi

echo "Godself....expect me" 

sleep 24

date 
