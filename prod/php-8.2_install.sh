#!/bin/bash

sudo dpkg -l | grep php | tee packages.txt
sudo add-apt-repository ppa:ondrej/php # Press enter when prompted.
sudo apt update

# run separate! chaining skips packages that error
sudo apt install -y php8.2-cli
sudo apt install -y php8.2-common
sudo apt install -y php8.2-curl
sudo apt install -y php8.2-fpm
sudo apt install -y php8.2-gd
sudo apt install -y php8.2-igbinary
sudo apt install -y php8.2-intl
sudo apt install -y php8.2-mbstring
sudo apt install -y php8.2-mysqli
sudo apt install -y php8.2-opcache
sudo apt install -y php8.2-readline
sudo apt install -y php8.2-redis
sudo apt install -y php8.2-xml
sudo apt install -y php8.2-xsl
sudo apt install -y php8.2-zip

sudo systemctl enable php8.2-fpm.service