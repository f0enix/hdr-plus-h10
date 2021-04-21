#!/bin/bash

# git repository root directory
export MY_ROOT=$PWD
export THIRDPARTY_DIR=${MY_ROOT}/3rdparty
export HALIDE_BUILD_DIR=${MY_ROOT}/3rdparty/Halide-10.0.0/build
export HALIDE_INSTALL_DIR=${MY_ROOT}/3rdparty/Halide-10.0.0/install
export BUILD_DIR=${MY_ROOT}/build
export HALIDE_DISTRIB_DIR=${HALIDE_INSTALL_DIR}
export LLVM_DIR=/usr/local/Cellar/llvm/11.1.0_1/lib/cmake
###############################¨
# Install Halide 10.0.0
###############################¨
mkdir -p ${THIRDPARTY_DIR} && cd ${THIRDPARTY_DIR}
wget https://github.com/halide/Halide/archive/v10.0.0.zip
unzip -o v10.0.0.zip
mkdir -p ${HALIDE_BUILD_DIR} && cd ${HALIDE_BUILD_DIR}
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=${HALIDE_INSTALL_DIR} \
 -DWITH_TESTS=OFF -DWITH_APPS=OFF -DWITH_TUTORIALS=OFF \
 -DWITH_ARM=OFF -DWITH_AARCH64=OFF -DWITH_HEXAGON=OFF -DWITH_MIPS=OFF -DWITH_POWERPC=OFF -DWITH_NVPTX=OFF -DWITH_RISCV=OFF \
 ..
make -j 8 install

###############################¨
# Install HDR+
###############################¨
mkdir -p ${BUILD_DIR} && cd ${BUILD_DIR}
cmake -DHALIDE_DISTRIB_DIR=${HALIDE_DISTRIB_DIR} -DCMAKE_BUILD_TYPE=$BUILD_TYPE ..
cd ${BUILD_DIR} && make -j 8 all 
cp -f hdrplus ../hdrplus
cp -f stack_frames ../stack_frames
