#!/bin/bash

#	sjc
mkdir -p ~/.sjc && rm -rvf ~/.sjc && mkdir ~/.sjc
cd ~/.sjc
git clone --recursive git@github.com:stjosephcontent/orchestra.git

#	cli
cd ~/.sjc/cli
npm install
npm link

#	reverse proxy
cd ~/.sjc/reverseproxy
npm install

echo "all done installing orchestra"

