#!/bin/env bash

git clone https://gitee.com/mirrors/eDEX-UI.git
cd eDEX-UI/
sudo aptitude install npm -y
npm run install-linux
npm start
npm run build-linux
