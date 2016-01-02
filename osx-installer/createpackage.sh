#!/bin/bash

cp OrchestraOSXTemplate.dmg OrchestraOSXStage.dmg

hdiutil attach OrchestraOSXStage.dmg

cd /Volumes/orc/orchestra

git pull --recurse-submodules=yes

date >> cool.txt

cd $OLDPWD

hdiutil detach /Volumes/orc

hdiutil convert OrchestraOSXStage.dmg -format UDZO -o OrchestraOSXDist.dmg

rm OrchestraOSXStage.dmg

echo "cool"
