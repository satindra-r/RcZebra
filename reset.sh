#!/bin/bash
target="$(cat target.txt)"
if [ -f $HOME/$target ]; then
cat $HOME/$target.bak > $HOME/$target
fi