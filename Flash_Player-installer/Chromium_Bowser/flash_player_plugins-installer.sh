#!/bin/env bash

cd usr/
sudo cp -rfpva * /usr
cd ..

sudo mkdir -pv /usr/lib/chromium/plugins

sudo cp -rfpva libflashplayer.so /usr/lib/chromium/plugins
sudo cp -rfpva libpepflashplayer.so /usr/lib/chromium/plugins
sudo cp -rfpva manifest.json /usr/lib/chromium/plugins

sudo chmod 755 /usr/lib/chromium/plugins/libflashplayer.so
sudo chmod 755 /usr/lib/chromium/plugins/libpepflashplayer.so
sudo chmod 755 /usr/lib/chromium/plugins/manifest.json

sudo cp -rfpva /etc/chromium.d/default-flags /etc/chromium.d/default-flags.bak

sudo tee /etc/chromium.d/default-flags <<'EOF'
# A set of command line flags that we want to set by default.

# Do not hide any extensions in the about:extensions dialog
export CHROMIUM_FLAGS="$CHROMIUM_FLAGS --show-component-extension-options"

# Enable GPU rasterization.
export CHROMIUM_FLAGS="$CHROMIUM_FLAGS --enable-gpu-rasterization"

# Don't display any warnings about not being the default browser
export CHROMIUM_FLAGS="$CHROMIUM_FLAGS --no-default-browser-check"

# Disable pinging
export CHROMIUM_FLAGS="$CHROMIUM_FLAGS --disable-pings"

# Disable the builtin media router (bug #833477)
export CHROMIUM_FLAGS="$CHROMIUM_FLAGS --media-router=0"

export CHROMIUM_FLAGS="--ppapi-flash-path=/usr/lib/chromium/plugins/libpepflashplayer.so --ppapi-flash-version=34.0.0.92"
EOF
