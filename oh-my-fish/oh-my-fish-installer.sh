#!/bin/env bash

curl -L https://get.oh-my.fish | fish

curl -L https://get.oh-my.fish > install
fish install --path=~/.local/share/omf --config=~/.config/omf

# with git
git clone https://github.com/oh-my-fish/oh-my-fish
cd oh-my-fish
bin/install --offline
# with a tarball
curl -L https://get.oh-my.fish > install
fish install --offline=omf.tar.gz