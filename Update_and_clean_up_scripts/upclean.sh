#!/bin/env bash

# Update
sudo aptitude update
sudo apt update
sudo aptitude upgrade -y
sudo apt-get upgrade -y
sudo aptitude install -f -y
sudo apt-get install -f -y
sudo aptitude safe-upgrade -y
sudo aptitude dist-upgrade -y
sudo apt-get dist-upgrade -y

# Clean

#rm -rf /tmp/*
#sudo rm -rf $HOME/.local/share/Trash/files/
#sudo find /opt -name "*.log" -exec rm -rf {} \;
rm -rf /tmp/*
sudo find /opt -name "*.log" -exec rm -rf {} \;
sudo rm -rf $HOME/.local/share/Trash/files/
sudo apt autoremove -y
sudo aptitude autoclean -y
sudo apt autoclean -y
sudo aptitude clean 
sudo apt clean
dpkg -l |grep ^rc|awk '{print $2}' |sudo xargs dpkg -P ${tty_reset}
