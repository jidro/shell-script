#!/bin/env bash

#sudo aptitude install flatpak -y
sudo apt install flatpak -y
#sudo aptitude install gnome-software-plugin-flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt autoremove -y
#sudo aptitude autoclean -y
sudo apt autoclean -y
#sudo aptitude clean
sudo apt clean

sudo zypper install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo pacman -S flatpak -y

sudo eopkg install flatpak xdg-desktop-portal-gtk -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo apk add flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

dnf install flatpak -y
dnf install urpmi -y
urpmi flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo swupd bundle-add desktop

sudo xbps-install -S flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

services.flatpak.enable = true;
sudo nixos-rebuild switch -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo inary it flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo neko em flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo pisi it flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
