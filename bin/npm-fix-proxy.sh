#!/bin/sh

npm config ls -l | grep proxy

if [ -z "$http_proxy" ]; then
	npm config rm proxy
	npm config rm https-proxy
else
	npm config set proxy $(echo $http_proxy)
	npm config set https-proxy $(echo $https_proxy)
fi

npm config ls -l | grep proxy
