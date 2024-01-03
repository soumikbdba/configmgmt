#!/bin/bash

# Update package lists
sudo apt update

# Install required packages
sudo apt install -y python3-pip apache2 php

# Place PHP app files in the appropriate directory
sudo mkdir -p /var/www/html/php_app

# Add DirectoryIndex entry only if it doesn't exist
if ! grep -q "DirectoryIndex" /etc/apache2/sites-enabled/000-default.conf; then
    sudo sed -i '/<VirtualHost \*:80>/a \ \ \ \ \ \ \ \ DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm' /etc/apache2/sites-enabled/000-default.conf
fi

# Change DocumentRoot only if it's not already set to /var/www/html/php_app
if ! grep -q "DocumentRoot \/var\/www\/html\/php_app" /etc/apache2/sites-enabled/000-default.conf; then
    sudo sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/html\/php_app/' /etc/apache2/sites-enabled/000-default.conf
fi

# Restart Apache
sudo systemctl restart apache2
