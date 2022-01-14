echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
 
echo "Installing latest node version..."
nvm install --lts

echo "Setting default lts version to use..."
nvm use --lts

echo "Installing latest npm version..."
nvm install-latest-npm

echo "Installing yarn..."
npm install -g yarn
