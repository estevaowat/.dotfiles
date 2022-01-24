#!/usr/bin/env sh

echo ""
echo "Installing nvm..."
echo ""
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

echo ""
echo "sourcing NVM"
echo ""
source ~/.nvm/nvm.sh

echo "Installing latest node version..."
echo ""
nvm install --lts

echo ""
echo "Setting default lts version to use..."
echo ""
nvm use --lts

echo ""
echo "Installing latest npm version..."
echo ""
nvm install-latest-npm

echo ""
echo "Installing yarn..."
echo ""
npm install -g yarn
