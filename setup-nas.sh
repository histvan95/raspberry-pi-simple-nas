#!/bin/bash

sudo apt update
sudo apt upgrade

# Transmission
sudo apt install transmission-daemon
sudo systemctl stop transmission-daemon
sudo mkdir -p ~/.config/transmission-daemon/
sudo ln -s /etc/transmission-daemon/settings.json ~/.config/transmission-daemon/
sudo chown -R ubuntu:ubuntu ~/.config/transmission-daemon/

# MiniDLNA
sudo apt-get install minidlna

# Apache2 + PHP
sudo apt-get install apache2
sudo apt-get install php libapache2-mod-php

# Samba
sudo apt-get install samba samba-common-bin