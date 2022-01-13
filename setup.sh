OS=$(echo $(uname -a) | cut -d' ' -f1)


if [ "$OS" == "Linux" ]; then
    DISTRO=$(. /etc/os-release; echo "$NAME")
    if [ "$DISTRO" == "Ubuntu" ]; then
        source ./setup/debian/setup.sh
    fi
    
    if [ "$DISTRO" == "Arch Linux" ]; then
        source ./setup/debian/setup.sh
    fi
fi

if [ "$OS" == "Darwin" ]
then
    echo "EXECUTING MAC INSTALLATION"
     source ./setup/mac/setup.sh
fi

# Installing general softwares that works in any setup 
source ./general/node.sh
source ./general/docker.sh