#!/bin/sh

npm config ls -l | grep proxy

npm config set proxy $(echo $http_proxy)
npm config set https-proxy $(echo $https_proxy)

npm config ls -l | grep proxy
