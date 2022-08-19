#!/bin/bash

echo "Criando Diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios"

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt empresa2022) -G GRP_ADM
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt empresa2022) -G GRP_ADM
useradd joao-m -s /bin/bash -p $(openssl passwd -crypt empresa2022) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt empresa2022) -G GRP_VEN
useradd sebatiana -m -s /bin/bash -p $(openssl passwd -crypt empresa2022) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt empresa2022) -G GRP_VEN

useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt empresa2022) -G GRP_SEC
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt empresa2022) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt empresa2022) -G GRP_SEC

echo "Dando permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
