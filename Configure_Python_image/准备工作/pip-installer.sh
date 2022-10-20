#!/bin/env bash

if [ "$(ls /bin/curl)" = "/bin/curl" ];then
 curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
else
 if [ "$(ls /bin/wget)" = "/bin/wget" ];then
  wget https://bootstrap.pypa.io/get-pip.py -o get-pip.py
 else
  exit
 fi
fi
python get-pip.py
python get-pip.py --no-index --find-links=/local/copies
python get-pip.py --user
python get-pip.py --proxy="http://[user:passwd@]proxy.server:port"
python get-pip.py pip==9.0.2 wheel==0.30.0 setuptools==28.8.0

#Python 2:
##Fedora 21
sudo yum upgrade python-setuptools
sudo yum install python-pip python-wheel
##Fedora 22
sudo dnf upgrade python-setuptools
sudo dnf install python-pip python-wheel
#Python 3
sudo dnf install python3 python3-wheel
sudo dnf upgrade python-setuptools
sudo yum upgrade python-setuptools
sudo dnf install python-pip python-wheel
sudo yum install python-pip python-wheel

#CentOS/RHEL
sudo yum install python-pip
sudo yum install python-wheel
sudo yum install python-pip python-wheel
sudo yum upgrade python-setuptools
sudo yum install python34u python34u-wheel

#openSUSE
##Python 2
sudo zypper install python-pip python-setuptools python-wheel
##Python 3
sudo zypper install python3-pip python3-setuptools python3-wheel

#Debian/Ubuntu
##Python 2
sudo apt install python-pip
##Python 3
sudo apt install python3-venv python3-pip

#Arch Linux
##Python 2
sudo pacman -S python2-pip
##Python 3
sudo pacman -S python-pip

#Upgrading pip
pip install -U pip

python -m pip install -U pip
