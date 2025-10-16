 #!/bin/zsh

echo "updating machine!"

echo "updating brew registries..."
brew update


echo "upgrading brew packages..."
brew upgrade --greedy --verbose

echo "upgrading brew applications..."
brew upgrade --greedy --cask --verbose

update-all-languages

nvim --headless "+Lazy! update" +qa
