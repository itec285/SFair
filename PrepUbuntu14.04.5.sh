#!/bin/sh
sudo apt-get install apache2
sudo apt-get install mysql-server php5-mysql
sudo mysql_install_db
sudo mysql_secure_installation
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
sudo nano /etc/apache2/mods-enabled/dir.conf
sudo service apache2 restart
cd SFair
git config --global user.email “itec285@gmail.com”
git config --global user.name “Ivan Long”
sudo tar xvjf sfiab-2.0.8.tar.bz2
