#!/usr/bin/env sh
for application in git nvim p10k zsh vscode
do
  stow -S $(application) 
done
