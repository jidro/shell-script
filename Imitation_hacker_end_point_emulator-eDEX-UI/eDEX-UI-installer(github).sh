#!/bin/env bash

git clone https://github.com/GitSquared/edex-ui.git
cd eDEX-UI/
sudo aptitude install npm -y
npm run install-linux
npm start
npm run build-linux
