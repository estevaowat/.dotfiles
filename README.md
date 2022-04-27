# .dotfiles :computer:

This repository has all my configs to set up my dev machine (Mac and Linux)

## TODO

[] Add in script after installing IntelliJ to plugins folder to ~/Library/Application Support/JetBrains/IntelliJIdea2020.3/plugins
or wherever OS needs to be.
Link Related:

- https://intellij-support.jetbrains.com/hc/en-us/articles/206544519

## Requirements

[git](https://git-scm.com/)

## Usage

1- Clone this repo in your machine.

2- Go to folder `./dotfiles`

3- Run the setup sh file based on your operating system like `. ~/.dotfiles/setup/setup_debian.sh`

4- DONE!

## Intellij Configuration

1- Open Intellij

2- Go to Manage IDE Settings > Import Settings

3- Select the zip file `~/.dotfiles/intellij/settings.zip` to import Configuration

4- DONE!

## VS Code useful commands

### List all vscode extensions

```bash
  code --list-extensions
```

## HomeBrew useful commands

### Create a Brewfile with all packages installed using brew

```bash
  brew bundle dump --describe
```

### Clean up old versions of brew packages 

```bash 
  brew cleanup --prune=all --dry-run
  brew autoremove --dry-run
```
