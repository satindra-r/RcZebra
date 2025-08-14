#!/bin/bash
./unset.sh
target="$(cat target.txt)"
awk '{print $0 " #--rcZebra--"}' rcZebra.sh | sed "s/rcTarget/$target/" >> $HOME/$target
