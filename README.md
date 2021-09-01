# .dotfiles

The objective of this repo is to setup my dev machine AFAP.

## How to setup machine (Only works on Mac environments)

```bash
git clone https://github.com/estevaowat/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
source ./setup/setup.sh
```

## List all your vscode extensions

```bash
 code --list-extensions | xargs -L 1 echo code --install-extension
```

## Generate a brewfile with all your packages installed with brew

```bash
brew bundle dump --describe
```
