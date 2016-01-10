#!/bin/sh

# first install git
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git

cd ~
git clone https://github.com/mnebuerquo/dotfiles.git

cd dotfiles
sh install.sh

