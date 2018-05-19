#!/bin/bash

apt update && apt install -y gcc g++ libgnutls28-dev nettle-dev libssh2-1-dev libc-ares-dev libxml2-dev zlib1g-dev libsqlite3-dev pkg-config libcppunit-dev autoconf automake make autotools-dev autopoint libtool git &&
git clone https://github.com/aria2/aria2.git &&
cd aria2/src &&
rm -f OptionHandlerFactory.cc &&
wget https://raw.githubusercontent.com/kzw200015/aria2script/master/OptionHandlerFactory.cc &&
cd .. &&
autoreconf -i &&
./configure &&
make && make install &&
echo "Installed successfully"
