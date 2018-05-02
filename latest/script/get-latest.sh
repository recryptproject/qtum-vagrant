#!/bin/bash
latestUrl=`curl -s https://api.github.com/repos/recryptproject/recrypt/releases/latest | grep -oP '"browser_download_url": ".+x86_64-linux-gnu.tar.gz"' | grep -oP "http.+gz"`
name=`echo $latestUrl | grep -oP "[^/]+.gz"`
echo $latestUrl
wget $latestUrl || exit 1
tar xzf $name
rootDir=`tar tzf $name | head -n 1`
cd $rootDir
ln -s `pwd`/bin/recryptd /usr/local/bin/recryptd
ln -s `pwd`/bin/recrypt-cli /usr/local/bin/recrypt-cli
