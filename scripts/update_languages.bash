#! /usr/bin/env bash

for tool in $(asdf plugin list); do
    echo "updating $tool..."

    if [[ "$tool" = 'java' ]]; then
        lts_version=$(asdf list all java | rg temurin | rg -v jre | rg LTS | tail -1)
        echo "java latest version $lts_version"
        asdf install "$tool" $lts_version
    else
        asdf install "$tool" latest
    fi

    echo "$tool updated!"

    echo "******************"
done

echo "set up all languages to latest version"
