#!/bin/sh

set -e

# https://github.com/nvm-sh/nvm#install--update-script
NVM_VERSION="v0.35.1"
curl -o- https://raw.githubusercontent.com/creationix/nvm/"${NVM_VERSION}"/install.sh > downloaded-nvm-install.sh
chmod +x downloaded-nvm-install.sh
./downloaded-nvm-install.sh --no-use

# https://github.com/yarnpkg/yarn/issues/3255
brew install yarn --without-node
