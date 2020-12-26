#!/bin/sh

export OPENWRT_DIR=~/openwrt
export PATH=$OPENWRT_DIR/staging_dir/toolchain-mips_24kc_gcc-8.4.0_musl/bin:$PATH
export STAGING_DIR=$OPENWRT_DIR/staging_dir/toolchain-mips_24kc_gcc-8.4.0_musl

rm -f stone

#make lib_openssl
make -j 2 ag300h-ssl
