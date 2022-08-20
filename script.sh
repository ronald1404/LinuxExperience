#!/bin/bash
echo "Creating directories..."

mkdir /home/public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating user groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Creating users..."

useradd abel -m -s /bin/bash -p "$(openssl passwd -1 "123")" -G GRP_ADM
useradd isadora -m -s /bin/bash -p "$(openssl passwd -1 "123")" -G GRP_ADM
useradd max -m -s /bin/bash -p "$(openssl passwd -1 "123")" -G GRP_ADM

useradd mario -m -s /bin/bash -p "$(openssl passwd -1 "123")" -G GRP_VEN
useradd joaquina -m -s /bin/bash -p "$(openssl passwd -1 "123")" -G GRP_VEN
useradd sarah -m -s /bin/bash -p "$(openssl passwd -1 "123")" -G GRP_VEN

useradd carlos -m -s /bin/bash -p "$(openssl passwd -1 "123")" -G GRP_SEC
useradd joao -m -s /bin/bash -p "$(openssl passwd -1 "123")" -G GRP_SEC
useradd marina -m -s /bin/bash -p "$(openssl passwd -1 "123")" -G GRP_SEC

echo "Specifying directory permissions..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /home/public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


echo "success..."
