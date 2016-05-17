#!/bin/bash

sudo -v

if [ -d ~/.sjc ]; then
    bash ~/.sjc/update.sh
else
    git clone --branch develop --recurse-submodules https://github.com/stjosephcontent/orchestra.git ~/.sjc
    cd ~/.sjc/reverseproxy
    bash install.sh
    cd ~/.sjc/cli
    bash install.sh
fi

echo "all done installing orchestra"
