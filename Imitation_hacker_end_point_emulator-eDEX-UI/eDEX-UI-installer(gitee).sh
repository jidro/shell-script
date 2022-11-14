#!/bin/env bash

# Install git application software.
sudo apt-get install git aptitude

# Clone eDEX UI repository.
git clone https://gitee.com/mirrors/eDEX-UI.git

# Enter the cloned eDEX UI warehouse.
cd eDEX-UI/

# Install the npm application software.
sudo aptitude install npm -y

# Use npm to install and start eDEX UI.
npm run install-linux
npm start
npm run build-linux
