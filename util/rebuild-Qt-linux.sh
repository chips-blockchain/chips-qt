#!/bin/bash
CHIPS_ROOT=$(pwd)
CHIPS_PREFIX="${CHIPS_ROOT}/db4"
CHIPS_DEPENDS="${CHIPS_ROOT}/depends"


./autogen.sh
./configure --prefix=${CHIPS_DEPENDS}/x86_64-pc-linux-gnu LDFLAGS="-L${CHIPS_PREFIX}/lib/" CPPFLAGS="-I${CHIPS_PREFIX}/include/" --with-gui=yes --disable-tests --disable-bench --enable-upnp-default --enable-experimental-asm --enable-static --disable-shared
make -j$(nproc)

echo "Done building CHIPS-Qt !"
