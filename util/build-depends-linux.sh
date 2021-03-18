#!/bin/bash
CHIPS_ROOT=$(pwd)
CHIPS_DEPENDS="${CHIPS_ROOT}/depends"

cd ${CHIPS_DEPENDS}
make -j$(nproc)
cd ${CHIPS_ROOT}
echo "Done building"
