#!/usr/bin/env sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

source ~/.nvm/nvm.sh

nvm use --lts

nvm install-latest-npm

npm install -g yarn
