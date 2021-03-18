#!/bin/bash
CHIPS_ROOT=$(pwd)
CHIPS_DEPENDS="${CHIPS_ROOT}/depends"

./autogen.sh
./configure LDFLAGS="-L${CHIPS_DEPENDS}/x86_64-pc-linux-gnu/lib/" CPPFLAGS="-I${CHIPS_DEPENDS}/x86_64-pc-linux-gnu/include/" --prefix=${CHIPS_DEPENDS}/x86_64-pc-linux-gnu --with-boost=${CHIPS_DEPENDS}/x86_64-pc-linux-gnu --with-boost-libdir=${CHIPS_DEPENDS}/x86_64-pc-linux-gnu --with-gui=yes --disable-tests --disable-bench --enable-experimental-asm --enable-static LDFLAGS=-static-libstdc++
make -j$(nproc)

echo "Done building CHIPS-Qt !"
