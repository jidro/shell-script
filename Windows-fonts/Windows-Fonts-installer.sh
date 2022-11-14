#!/bin/env bash

git clone https://codechina.csdn.net/GaaraZ/font-files
cd font-files/Windows字体/Windows-Fonts/
# mkdir -pv fonts
# mv -v *.TTF fonts/
# mv -v *.ttf fonts/
# mv -v *.ttc fonts/
# mv -v *.woff fonts
# mv -v *.woff2 fonts/
# rm -rfv *.fon
# cd fonts/
sudo mkdir -pv /usr/share/fonts/micro
# sudo mv -v *.TTF /usr/share/fonts/micro
# sudo mv -v *.ttf /usr/share/fonts/micro
# sudo mv -v *.ttc /usr/share/fonts/micro
# sudo mv -v *.woff /usr/share/fonts/micro
# sudo mv -v *.woff2 /usr/share/fonts/micro
sudo mv -v * /usr/share/fonts/micro
sudo chmod 775 /usr/share/fonts/micro
sudo mkdir -pv /usr/share/fonts/win
# sudo cd /usr/share/fonts/win
# sudo mkfontscale
# sudo mkfontdir
sudo mkfontscale /usr/share/fonts/win
sudo mkfontdir /usr/share/fonts/win
sudo fc-cache -fv
cd ../../../
sudo rm -rfv font-files/