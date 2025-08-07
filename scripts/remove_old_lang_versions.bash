#!/usr/bin/env zsh

# Loop over each line of the .tool-versions file
while read -r line; do
    tool_and_versions=("${(z)line}")
    echo "tool_and_versions=$tool_and_versions"

  # Split out the tool name and versions
  tool_name="${tool_and_versions[1]}"
        echo "tool_name=$tool_name"

  global_versions=("${tool_and_versions[@]:1}")

  # Loop over each version of the tool name
  for version in $(asdf list $tool_name); do
    # When version not in `global_versions` array from .tool-versions file
    if [[ ! " ${global_versions[@]} " =~ "${version} " ]]; then
      # Remove the version here if you want

 #     echo "tool_name=$tool_name"
      echo "version=$version"
   asdf uninstall $tool_name $version
 ## echo "removed $tool_name $version successfully!"
    fi
  done
done < ~/.tool-versions
