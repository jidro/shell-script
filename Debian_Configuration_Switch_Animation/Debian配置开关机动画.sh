#!/bin/env bash

sudo apt-get install plymouth plymouth-themes -y

sudo cp -rfpva /etc/default/grub /etc/default/grub.bak
sudo sed -i "s@quiet@quiet splash@g" /etc/default/grub

sudo update-grub
sudo update-grub2

sudo tee /etc/initramfs-tools/modules <<'EOF'
# List of modules that you want to include in your initramfs.
# They will be loaded at boot time in the order below.
#
# Syntax:  module_name [args ...]
#
# You must run update-initramfs(8) to effect this change.
#
# Examples:
#
# raid1
# sd_mod

# KMSintel_agp
drm
i915 modeset=1

# KMSdrm
nouveau modeset=1

# KMSdrm
radeon modeset=1
EOF

# sudo plymouth-set-default-theme -R futureprototype

sudo mkdir -pv /lib/firmware/radeon
sudo mkdir -pv /lib/firmware/i915
sudo mkdir -pv /lib/firmware/nvidia

cd ../../../../

cd 缺失固件/i915缺失固件/
sudo cp -rfpva * /lib/firmware/i915

cd ../
cd radeon缺失固件/
sudo cp -rfpva * /lib/firmware/radeon

sudo plymouth-set-default-theme -R futureprototype
