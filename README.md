# .dotfiles

The objective of this repo is to setup my dev machine AFAP.

## Usage

Download this repo, go to folder `./dotfiles` and run the command `source ./setup.sh` and DONE!

```bash
git clone https://github.com/estevaowat/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
source ./setup.sh
```

## Useful list of commands to generate this beautiful setup

### List all your vscode extensions and install

```bash
 code --list-extensions | xargs -L -2 echo code --install-extension
```

## Generate a brewfile with all your packages installed with brew

```bash
brew bundle dump --describe
```
