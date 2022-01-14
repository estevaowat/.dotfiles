OS=$(echo $(uname -a) | cut -d' ' -f1)

if [ "$OS" == "Linux" ]; then
    DISTRO=$(. /etc/os-release; echo "$NAME")
    
    echo "Executing $OS - $DISTRO INSTALATION"
    
    if [ "$DISTRO" == "Ubuntu" ]; then
        source ./setup/debian/setup.sh
    fi
    
    if [ "$DISTRO" == "Arch Linux" ]; then
        source ./setup/debian/setup.sh    
    fi
    
    source ./general/node.sh

fi

if [ "$OS" == "Darwin" ]
then
     echo "Executing $OS"
     source ./setup/mac/setup.sh
fi

# Installing general softwares that works in any setup 
echo "Installing docker..."
source ./general/docker.sh

echo "Configuring neovim..."
source ./general/neovim.sh

echo "Installing vscode extensions..."
source ~/.dotfiles/setup/vscode/vscode.sh