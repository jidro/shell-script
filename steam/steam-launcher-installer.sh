#!/bin/env bash

sudo tee /etc/apt/sources.list.d/steam.list <<'EOF'
deb [arch=amd64,i386] http://repo.steampowered.com/steam/ precise steam
deb-src [arch=amd64,i386] http://repo.steampowered.com/steam/ precise steam
EOF

sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install \
  libgl1-mesa-dri:amd64 \
  libgl1-mesa-dri:i386 \
  libgl1-mesa-glx:amd64 \
  libgl1-mesa-glx:i386 \
  steam-launcher
