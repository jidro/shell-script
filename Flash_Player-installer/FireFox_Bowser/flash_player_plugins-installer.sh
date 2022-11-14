#!/bin/env bash

sudo mkdir -pv /lib/mozilla
sudo mkdir -pv /lib/mozilla/plugins
sudo mkdir -pv /lib64/mozilla
sudo mkdir -pv /lib64/mozilla/plugins
sudo mkdir -pv /lib32/mozilla
sudo mkdir -pv /lib32/mozilla/plugins

sudo cp -rfpva * /lib/mozilla/plugins
sudo cp -rfpva * /lib64/mozilla/plugins
sudo cp -rfpva * /lib32/mozilla/plugins

sudo chmod 755 /lib/mozilla/plugins/libflashplayer.so
sudo chmod 755 /lib/mozilla/plugins/libpepflashplayer.so
sudo chmod 755 /lib/mozilla/plugins/manifest.json

sudo chmod 755 /lib64/mozilla/plugins/libflashplayer.so
sudo chmod 755 /lib64/mozilla/plugins/libpepflashplayer.so
sudo chmod 755 /lib64/mozilla/plugins/manifest.json

sudo chmod 755 /lib32/mozilla/plugins/libflashplayer.so
sudo chmod 755 /lib32/mozilla/plugins/libpepflashplayer.so
sudo chmod 755 /lib32/mozilla/plugins/manifest.json
