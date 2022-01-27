# .dotfiles :computer:

The objective of this repo is to setup my dev machine AFAP.

## Requirements

[git](https://git-scm.com/)

## Usage

1- Clone this repo in your machine

2- Go to folder `./dotfiles`

3- run the command `source ./setup.sh`

4- After running `setup.sh` configure zsh plugins

5- DONE!

```bash

git clone https://github.com/estevaowat/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
source ./setup.sh

### After running setup.sh
source ./oh-my-zsh/plugins.sh
```

## Intellij Configuration

1- Open Intellij

2- Go to Manage IDE Settings > Import Settings

3- Select the zip file `~/.dotfiles/intellij/settings.zip` to import Configuration

4- DONE!

## Useful commands to help this beautiful setup

### List all vscode extensions

```bash
 code --list-extensions
```

## Create a brewfile with all packages installed using brew

```bash
brew bundle dump --describe
```
