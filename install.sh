#!/bin/bash

#	sjc
if [ -d ~/.sjc ]; then
    mkdir ~/.sjc/cli
fi

#	cli
if [ -d ~/.sjc.cli ]; then
    cd ~/.sjc/cli
    git pull
    npm install
    sudo -H npm link    
else
    mkdir ~/.sjc/cli
    git clone git@github.com:stjosepcontent/sjc-cli ~/.sjc/cli
    cd ~/.sjc/cli
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
    git clone git@github.com:stjosephcontent/orchestra-reverse-proxy ~/.sjc/reverseproxy
    sudo -H npm install
fi

#   skel
if [ -d ~/.sjc/skel ]; then
    cd ~/.sjc/skel
    git pull
else
    mkdir ~/.sjc/skel
    git clone git@github.com:stjosephcontent/skel ~/.sjc/skel
fi

echo "all done installing orchestra"
