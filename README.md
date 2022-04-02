# .dotfiles :computer:

The objective of this repo is to setup my dev machine AFAP.

## TODO

[] Add in script after installing intellij to plugins folder to ~/Library/Application Support/JetBrains/IntelliJIdea2020.3/plugins
or wherever OS needs to be.
Link Related:

- https://intellij-support.jetbrains.com/hc/en-us/articles/206544519

## Requirements

[git](https://git-scm.com/)

## Usage

1 - Clone this repo in your machine

2 - Go to folder `./dotfiles`

3 - Run the setup sh file based on your operating system like `. ~/.dotfiles/setup/setup_debian.sh`

4 - DONE!

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

### Create a brewfile with all packages installed using brew

```bash
brew bundle dump --describe
```
