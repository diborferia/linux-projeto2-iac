#!/bin/bash


#Atualizar o Servidor

apt-get update
apt-get upgrade -y


#Instalar o Apache

apt-get install apache2 -y


#Instalar o zip

apt-get install unzip -y


echo "Fazendo o downloado dos arquivos, descompactando e copiando os arquivos para a pasta default do Apache"


# Acessar o  diretorio tmp e  fazer o download do conteudo do GitHub para esse diretorio

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip


cd /linux-site-dio-main

cp -R * /var/www/html/
