#!/bin/bash
target="$(cat target.txt)"
bashrc="$(awk '$NF!="#--rcZebra--" {print $0}' $HOME/$target)"
echo "$bashrc" > "$HOME/$target"
