#!/bin/env bash

# git clone https://codechina.csdn.net/GaaraZ/font-files
# cd font-files/Windows字体/Windows-Fonts/
mkdir fonts
mv *.eot fonts/
mv *.otf fonts/
mv *.TTF fonts/
mv *.ttf fonts/
mv *.ttc fonts/
mv *.woff fonts
mv *.woff2 fonts/
rm -rf *.fon
cd fonts/
sudo mkdir /usr/share/fonts/micro
sudo mv *.eot /usr/share/fonts/micro
sudo mv *.otf /usr/share/fonts/micro
sudo mv *.TTF /usr/share/fonts/micro
sudo mv *.ttf /usr/share/fonts/micro
sudo mv *.ttc /usr/share/fonts/micro
sudo mv *.woff /usr/share/fonts/micro
sudo mv *.woff2 /usr/share/fonts/micro
sudo mv * /usr/share/fonts/micro
sudo chmod 775 /usr/share/fonts/micro
sudo mkdir /usr/share/fonts/win
# sudo cd /usr/share/fonts/win
# sudo mkfontscale
# sudo mkfontdir
sudo mkfontscale /usr/share/fonts/win
sudo mkfontdir /usr/share/fonts/win
sudo fc-cache -fv
# cd ../../../
# sudo rm -rf font-files/