#!/bin/sh

export DEVICE=wrc1167gst2

export OPENWRT_DIR=~/openwrt/$DEVICE

if [ $DEVICE == ag300h ]; then
	export OPENWRT_CPU_ARCH=linux-mips32
	export OPENWRT_TOOL_PREFIX=mips-openwrt-linux-musl
	export STAGING_DIR=$OPENWRT_DIR/staging_dir/toolchain-mips_24kc_gcc-8.4.0_musl
	export OPENWRT_TOOL_DIR=$OPENWRT_DIR/staging_dir/target-mips_24kc_musl

elif [ $DEVICE == wrc1167gst2 ]; then
	export OPENWRT_CPU_ARCH=linux-mips32
	export OPENWRT_TOOL_PREFIX=mipsel-openwrt-linux-musl
	export STAGING_DIR=$OPENWRT_DIR/staging_dir/toolchain-mipsel_24kc_gcc-12.3.0_musl
	export OPENWRT_TOOL_DIR=$OPENWRT_DIR/staging_dir/target-mipsel_24kc_musl

else
	echo "Unknown DEVICE = $DEVICE"
	exit 1
fi

export PATH=$STAGING_DIR/bin:$PATH

rm -f stone

make -j 8 openwrt-ssl
