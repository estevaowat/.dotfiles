# .dotfiles :computer:

The objective of this repo is to setup my dev machine AFAP.

## Usage

1- Download this repo

2- Go to folder `./dotfiles` 

3- run the command `source ./setup.sh` 

4- DONE!

```bash
git clone https://github.com/estevaowat/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
source ./setup.sh
```

## Intellij Configuration
1- Open Intellij

2- Go to Manage IDE Settings > Import Settings

3- Select the zip file `~/.dotfiles/intellij/settings.zip` to import Configuration

4- DONE!

## Useful list of commands to generate this beautiful setup

### List all your vscode extensions and install

```bash
 code --list-extensions | xargs -L -2 echo code --install-extension
```

## Generate a brewfile with all your packages installed with brew

```bash
brew bundle dump --describe
```
