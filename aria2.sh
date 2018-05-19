#!/bin/bash

version="1.34.0"

apt update && apt install -y gcc g++ libgnutls28-dev nettle-dev libssh2-1-dev libc-ares-dev libxml2-dev zlib1g-dev libsqlite3-dev pkg-config libcppunit-dev autoconf automake make autotools-dev autopoint libtool git &&
wget https://github.com/aria2/aria2/releases/download/release-${version}/aria2-${version}.tar.gz &&
tar zxf aria2-${version}.tar.gz &&
cd aria2-${version}/src &&
rm -f OptionHandlerFactory.cc &&
wget https://raw.githubusercontent.com/kzw200015/aria2script/master/OptionHandlerFactory.cc &&
cd .. &&
./configure &&
make && make install &&
echo "Installed successfully"
