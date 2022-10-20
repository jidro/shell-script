#!/bin/env bash

sudo snap remove core
sudo snap remove hello-world
sudo snap remove snap-store

sudo apt purge snap -y
sudo apt purge snapd -y

sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean
