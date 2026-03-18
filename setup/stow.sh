#!/usr/bin/env sh
for application in git nvim p10k zsh vscode stow
do
  stow -S $(application)
done
