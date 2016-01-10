#!/bin/sh

# http://askubuntu.com/a/575642/139584

dpkg -s vim | grep 'Version'

sudo add-apt-repository ppa:fcwu-tw/ppa
sudo apt-get update
sudo apt-get install vim

dpkg -s vim | grep 'Version'
