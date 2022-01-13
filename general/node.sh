echo "Installing latest node version..."
nvm install --lts

echo "Setting default lts version to use..."
nvm use --lts

echo "Installing latest npm version..."
nvm install-latest-npm

echo "Installing yarn..."
npm install -g yarn
