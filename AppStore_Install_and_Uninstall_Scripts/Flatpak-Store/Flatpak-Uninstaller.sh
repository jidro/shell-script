#!/bin/env bash

sudo aptitude purge flatpak -y
sudo apt purge flatpak -y
sudo aptitude purge gnome-software-plugin-flatpak -y
sudo apt purge gnome-software-plugin-flatpak -y

sudo apt autoremove -y
sudo aptitude autoclean -y
sudo apt autoclean -y
sudo aptitude clean
sudo apt clean

