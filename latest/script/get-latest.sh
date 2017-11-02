#!/bin/bash
latestUrl=`curl -s https://api.github.com/repos/qtumproject/qtum/releases/latest | grep -oP '"browser_download_url": ".+x86_64-linux-gnu.tar.gz"' | grep -oP "http.+gz"`
name=`echo $latestUrl | grep -oP "[^/]+.gz"`
echo $latestUrl
wget $latestUrl || exit 1
tar xzf $name
rootDir=`tar tzf $name | head -n 1`
cd $rootDir
ln -s `pwd`/bin/qtumd /usr/local/bin/qtumd
ln -s `pwd`/bin/qtum-cli /usr/local/bin/qtum-cli
