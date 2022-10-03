#!/bin/bash

yum install epel-release -y

yum install docker -y

systemctl enable --now docker


systemctl status docker

date

echo "janci....beer time?" 
