#!/bin/env bash

sudo aptitude update
sudo apt update
sudo aptitude install snap -y
sudo apt-get install snap -y
sudo aptitude install snapd -y
sudo apt install snapd -y

sudo snap install core
sudo snap install hello-world

sudo snap install snap-store

sudo apt autoremove -y
sudo aptitude autoclean -y
sudo apt autoclean -y
sudo aptitude clean
sudo apt clean

git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install hello-world -y
hello-world
sudo snap install snap-store -y

sudo dnf install snapd -y
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install hello-world -y
hello-world
sudo snap install snap-store -y
