#!/bin/sh

# first install git
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git

cd ~
git clone https://github.com/mnebuerquo/dotfiles.git

# vim
sh ~/dotfiles/vim/upgrade.sh
apt-get install silversearcher-ag

# node
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install npm -g
sudo npm install -g bower grunt-cli 

# mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org

sudo service mongod start


