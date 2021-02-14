#!/bin/bash
#
# Install Apache
# Comment (with #) what should not be installed and add the applications you want to install.

source ./install/utils.sh
keep_sudo_alive

# Apache
sudo apt update && sudo apt upgrade -y
sudo apt install -y apache2
sudo service apache2 start
sudo chown -R $USER:$USER /var/www/

# PHP 7.1
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update -y

sudo apt install -y php7.1 php7.1-xml php7.1-mysql php7.1-json php7.1-curl php7.1-cli php7.1-common php7.1-mcrypt  php7.1-gd
php7.1-zip php7.1-redis php7.1-memcached libapache2-mod-php7.1 php7.1-mbstring php7.1-intl php7.1-fpm unzip

# Composer


# Test Setup
sudo echo "<?php phpinfo(); ?>" > /var/www/html/info.php 
sudo service apache2 restart