#!/bin/bash
apt-get install -y software-properties-common
add-apt-repository ppa:bitcoin/bitcoin
apt-get update
apt-get install -y libdb4.8-dev libdb4.8++-dev
apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils git cmake libboost-all-dev

git clone https://github.com/qtumproject/qtum --recursive
cd qtum
./autogen.sh
./configure && make && make install