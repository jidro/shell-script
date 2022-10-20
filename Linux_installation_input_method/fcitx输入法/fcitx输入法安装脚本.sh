#!/bin/sh

#Linux输入法安装方法
#1.通过命令行安装fcitx
sudo apt-get install fcitx -y

#2.通过命令行安装aptitude 
sudo apt-get install aptitude -y

#3.通过命令行利用aptitude 安装fcitx、qt
sudo aptitude install fcitx-bin fcitx-table fcitx-config-gtk fcitx-config-gtk2 fcitx-frontend-all -y
sudo aptitude install qt5-default qtcreator qml-module-qtquick-controls2 -y

#4.如果右上角没有出现fcitx，在终端中输入im-config进行配置
im-config

#5.重启完成即可使用（如果没有，需在右上角fcitx配置中添加）
#(Ubuntu作为例子)
