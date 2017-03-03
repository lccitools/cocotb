#!/bin/bash -e

FULL_VERSION=`git describe --tags`

make install FULL_INSTALL_DIR=${COCOTB_BASE}/${FULL_VERSION}

mkdir -p ${COCOTB_MODULEFILES}
cat <<EOF > ${COCOTB_MODULEFILES}/${FULL_VERSION}
#%Module
setenv COCOTB ${COCOTB_BASE}/${FULL_VERSION}
EOF

