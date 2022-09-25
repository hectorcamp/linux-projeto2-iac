#!/bin/bash

echo "Script De instalação do Apache2" 

echo "Atualizando o sistema..."

apt-get install update && apt-get install upgrade -y

echo "Instalando pacotes necessários..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Clonando o site modelo..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizado..."