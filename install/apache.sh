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

# PHP
sudo apt install -y php libapache2-mod-php 
sudo apt install php-cli unzip


# Composer


# Test Setup
sudo echo "<?php phpinfo(); ?>" > /var/www/html/info.php 
sudo service apache2 restart