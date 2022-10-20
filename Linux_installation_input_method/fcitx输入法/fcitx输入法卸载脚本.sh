#!/bin/sh

#Linux输入法安装方法
#1.通过命令行安装fcitx
sudo apt-get purge fcitx -y

#3.通过命令行利用aptitude 安装fcitx、qt
sudo aptitude purge fcitx-bin fcitx-table fcitx-config-gtk fcitx-config-gtk2 fcitx-frontend-all -y
sudo aptitude purge qt5-default qtcreator qml-module-qtquick-controls2 -y

sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean
