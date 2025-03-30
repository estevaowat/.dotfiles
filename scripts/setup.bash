#!/bin/bash
DEBUG_MODE=true
which -s brew
if [[ $? != 0 ]] ; then
    [DEBUG_MODE] && (echo "installing homebrew")
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi


