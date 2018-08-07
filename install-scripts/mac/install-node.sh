#!/bin/sh

# https://github.com/creationix/nvm#install-script
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh > nvm-install.sh
chmod +x nvm-install.sh
./nvm-install.sh --no-use

# https://github.com/yarnpkg/yarn/issues/3255
brew install yarn --without-node
