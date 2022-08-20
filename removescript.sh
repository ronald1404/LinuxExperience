#!/bin/bash

echo "Deleting users..."

userdel -r -f abel 
userdel -r -f isadora
userdel -r -f max
userdel -r -f mario
userdel -r -f joaquina
userdel -r -f sarah
userdel -r -f carlos
userdel -r -f joao
userdel -r -f marina

echo "deleting groups..."
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "deleting folders"

rmdir /home/public
rmdir /adm
rmdir /ven
rmdir /sec
