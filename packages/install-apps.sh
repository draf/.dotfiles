#!/bin/bash

pacman -Syu --needed "$(cat pkg.list | tr "\n" " ")"

groupadd docker

usermod -aG docker $USER

echo "127.0.0.1 desktop.cepel.br" >> /etc/hosts
echo "127.0.0.1 $hostname.cepel.br" >> /etc/hosts

#add 

# echo "listen_addresses = '*'" >> /var/lib/posgres/data/postgres.conf
# echo "host all all 172.17. 0.0/16 trust" >> /var/lib/postgres/data/pg_hba.conf
