#!/bin/bash

#	sjc
if [ ! -d ~/.sjc ]; then
    mkdir ~/.sjc
fi

#	cli
if [ -d ~/.sjc/cli ]; then
    cd ~/.sjc/cli
    git pull
    npm install
    sudo -H npm link
else
    mkdir ~/.sjc/cli
    cd ~/.sjc
    git clone git@github.com:stjosephcontent/sjc-cli.git cli
    cd cli
    npm install
    sudo -H npm link
fi

#	reverse proxy
if [ -d ~/.sjc/reverseproxy ];then
    cd ~/.sjc/reverseproxy
    git pull
    sudo -H npm install
else
    mkdir ~/.sjc/reverseproxy
    cd ~/.sjc
    git clone git@github.com:stjosephcontent/orchestra-reverse-proxy.git reverseproxy
    cd reverseproxy
    sudo -H npm install
fi

#   skel
if [ -d ~/.sjc/skel ]; then
    cd ~/.sjc/skel
    git pull
else
    mkdir ~/.sjc
    git clone git@github.com:stjosephcontent/skel.git skel
fi

echo "all done installing orchestra"
