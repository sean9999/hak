#!/bin/bash

SJC_ROOT=~/.sjc
BRANCH=master

sudo -v

if [ ! -d $SJC_ROOT ]; then
    git clone --branch $BRANCH --recurse-submodules https://github.com/stjosephcontent/orchestra.git $SJC_ROOT
    cd $SJC_ROOT/reverseproxy
    bash install.sh
    cd $SJC_ROOT/cli
    bash install.sh
fi

echo "all done installing orchestra"
