#!/bin/bash

SJC_ROOT=~/.sjc

cd $SJC_ROOT

git pull --recurse-submodules=yes
git submodule --recursive update
git submodule --recursive sync

echo 'orchestra is updated.'
