#!/bin/bash
#
# Install applications
# Comment (with #) what should not be installed and add the applications you want to install.

source ./install/utils.sh
keep_sudo_alive

# Update Ubuntu
sudo apt update
sudo apt upgrade -y

# Essential package
sudo apt -y install build-essential

# Git
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt -y update
sudo apt -y install git

# Nodejs
 sudo apt -y install nodejs
