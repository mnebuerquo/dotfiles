#!/bin/sh

# install skype 

sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update 
sudo apt-get install skype