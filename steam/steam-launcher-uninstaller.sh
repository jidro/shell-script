#!/bin/env bash
sudo rm -rf /etc/apt/sources.list.d/steam.list
sudo aptitude purge steam-launcher -y
# sudo aptitude purge libgl1-mesa-dri:amd64 libgl1-mesa-dri:i386 libgl1-mesa-glx:amd64 libgl1-mesa-glx:i386 -y
