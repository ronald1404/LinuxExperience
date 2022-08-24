#!/bin/bash/

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da apliacação"
cd /tmp
wget https://github.com/ronald1404/projeto-tela-de-login-facebook/archive/refs/heads/main.zip
unzip main.zip
cd projeto-tela-de-login-facebook
cp -R * /var/www/html/
