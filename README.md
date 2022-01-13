# .dotfiles

The objective of this repo is to setup my dev machine AFAP.

<!--
 TODO: Update readme
 - only run setup.sh in root, script will detect what OS you are running
 -->

## Usage

Download this repo

```
git clone https://github.com/estevaowat/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

### Mac Enviroment

```bash
source ./setup/mac/setup.sh
```

### Ubuntu, Debian Environments

```bash
source ./setup/debian/setup.sh
```

### Arch, Manjaro Environments

```bash
source ./setup/arch/setup.sh
```

## Useful commands

### List all your vscode extensions

```bash
 code --list-extensions | xargs -L -2 echo code --install-extension
```

## Generate a brewfile with all your packages installed with brew

```bash
brew bundle dump --describe
```
