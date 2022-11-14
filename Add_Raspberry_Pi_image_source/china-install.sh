#!/bin/env bash

# Install aptitude if you don't want to install aptitude can remove next "#".
sudo apt-get install aptitude

# Install wget or curl.
#sudo apt-get install wget curl
sudo aptitude install wget

# Download raspberry Pi pgp key.
wget https://mirrors.tuna.tsinghua.edu.cn/raspberrypi/raspberrypi.gpg.key
#curl https://mirrors.tuna.tsinghua.edu.cn/raspberrypi/raspberrypi.gpg.key

# If you can't download raspberrypi.gpg.key, use the raspberrypi.gpg.key file in this folder.
# Add the downloaded key to your local Trusted database.
sudo apt-key add raspberrypi.gpg.key

# Create the sources.list.d folder.
sudo mkdir -pv /etc/apt/sources.list.d

# Create a pi.list file and write the raspberry PI mirror source to it.
sudo echo "deb https://mirrors.tuna.tsinghua.edu.cn/raspberrypi bullseye main" >> /etc/apt/sources.list.d/pi.list

# If the previous step fails, simply copy the raspi.list file in this directory to /etc/apt/sources.list.d.
sudo cp -rfpv china-raspi.list /etc/apt/sources.list.d/

# Update the image source using apt or Aptitude tool.
sudo aptitude update
sudo apt-get update
