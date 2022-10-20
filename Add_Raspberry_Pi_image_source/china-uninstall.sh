#!/bin/env bash

# Delete key from locally trusted database.
sudo apt-key del raspberrypi.gpg.key

# Delete the pi.list file or raspi. List file in sources.list.d.
sudo rm -rf /etc/apt/sources.list.d/pi.list
sudo rm -rf /etc/apt/sources.list.d/raspi.list

# Update the image source.
sudo aptitude update
sudo apt update



