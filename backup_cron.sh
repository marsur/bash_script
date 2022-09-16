#!/bin/bash

#for backup 

crontab -l > /root/backup_cron.txt 

#check 

ls -l /var/spool/cron/
