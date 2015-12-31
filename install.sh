#!/bin/bash

#	sjc
if [ -d ~/.sjc ]; then
    mkdir ~/.sjc
    git clone --recursive git@github.com:stjosephcontent/orchestra.git
fi

#	cli
cd ~/.sjc/cli
git pull git@github.com/stjosepcontent/sjc-cli
npm install
sudo -H npm link

#	reverse proxy
cd ~/.sjc/reverseproxy
git pull git@github.com/stjosephcontent/orchestra-reverse-proxy
npm install

echo "all done installing orchestra"

