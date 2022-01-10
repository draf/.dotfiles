#!/bin/bash

# Creating dirs for postgres and pgAdmin containers

mkdir -p ~/.docker-volumes/pgAdmin
mkdir -p ~/.docker-volumes/postgresql

chattr +C ~/.docker-volumes/postgresql

sudo chown -R 5050:5050 ~/.docker-volumes/pgAdmin

# Creating dirs for development

mkdir -p ~/dev/soma
mkdir -p ~/dev/servers/eclipse/tomcat
mkdir -p ~/dev/servers/eclipse/soma-home
set -e

mkdir -p ~/dev/servers/aux/tomcat
mkdir -p ~/dev/servers/aux/soma-home

# Getting required software

mkdir -p ~/dev/vpn
mkdir -p ~/dev/postgres
mkdir -p ~/dev/eclipse-workspace
mkdir -p ~/dev/applications/tomcat
mkdir -p ~/dev/applications/eclipse

cd ~/dev/applications/tomcat

TOMCAT_VERSION="9.0.56"
TOMCAT_FILE="apache-tomcat-$TOMCAT_VERSION"

wget https://archive.apache.org/dist/tomcat/tomcat-9/v"$TOMCAT_VERSION"/bin/"$TOMCAT_FILE".tar.gz
tar -xf "$TOMCAT_FILE".tar.gz

rm "$TOMCAT_FILE".tar.gz

cp -r ~/dev/applications/tomcat/"$TOMCAT_FILE"/* ~/dev/servers/aux/tomcat/
cp -r ~/dev/applications/tomcat/"$TOMCAT_FILE"/* ~/dev/servers/eclipse/tomcat/

cd - > /dev/null




