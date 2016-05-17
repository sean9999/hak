#!/bin/bash

cd ~/.sjc

git pull --recurse-submodules=yes
git submodule --recursive update
git submodule --recursive sync
