#! /usr/bin/env bash

for tool in $(asdf plugin list); do
    asdf install "$tool" latest
done

echo "set up all languages to latest version"
