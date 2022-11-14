#!/bin/env bash

sudo apt-get install git aptitude -y
sudo aptitude install zsh -y
sudo aptitude install curl wget -y
git clone https://github.com/powerline/fonts.git
cd fonts/
sudo chmod a+x install.sh
./install.sh
sudo aptitude install fonts-powerline -y
sudo dnf install powerline-fonts -y

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rfv fonts

mkdir ~/.config/fontconfig/conf.d
sudo aptitude install wget -y
sudo dnf install wget
sudo pacman -S wget
wget https://github.com/powerline/fonts/blob/master/fontconfig/50-enable-terminess-powerline.conf
mv 50-enable-terminess-powerline.conf  ~/.config/fontconfig/conf.d
fc-cache -vf

echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
