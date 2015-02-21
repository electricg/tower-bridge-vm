#!/usr/bin/env bash
 
sudo apt-get update

sudo apt-get install -y \
  git \
  curl \
  php5 apache2 libapache2-mod-php5 php5-curl

sudo service apache2 restart