#!/bin/sh

set -e

#https://github.com/nvm-sh/nvm#install--update-script 
NVM_VERSION="v0.35.1"
NVM_INSTALLER="downloaded-nvm-install.sh"
echo "Installing NVM. See https://github.com/nvm-sh/nvm#install--update-script for more info."
echo "curl https://raw.githubusercontent.com/creationix/nvm/"${NVM_VERSION}"/install.sh | bash"

curl -o- https://raw.githubusercontent.com/creationix/nvm/"${NVM_VERSION}"/install.sh > "${NVM_INSTALLER}"
chmod +x "${NVM_INSTALLER}"
bash "${NVM_INSTALLER}" --no-use
rm "${NVM_INSTALLER}"

# https://github.com/yarnpkg/yarn/issues/3255
echo "Installing yarn for use with NVM. See https://github.com/yarnpkg/yarn/issues/3255 for more info."
brew install yarn --without-node
