#!/bin/sh

# http://askubuntu.com/a/575642/139584
sudo add-apt-repository ppa:fcwu-tw/ppa
sudo apt-get update
sudo apt-get install vim

# install silver searcher for vim
# this only works on ubuntu 14. for 12, use ../ag/fromsource
sudo apt-get install silversearcher-ag

