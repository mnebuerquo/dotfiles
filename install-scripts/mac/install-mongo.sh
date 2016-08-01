#!/bin/sh

# https://docs.mongodb.com/master/tutorial/install-mongodb-on-os-x/?_ga=1.197995245.332488549.1464606611

brew update

brew install mongodb --with-openssl

# to run use the following command
# mongod --dbpath <path to data directory>
