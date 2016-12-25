#!/bin/bash

git submodule update --init
cd ./src
npm install
node_modules/.bin/electron-packager ./ --linux --overwrite --out=../build 
sudo cp -R ../build/* /opt/ronin
sudo cp ../ronin.desktop /usr/share/applications/
