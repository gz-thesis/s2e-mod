#!/bin/bash

S2EDIR="/opt/s2e-head/"
INSTALL_DIR="$S2EDIR/build/opt/"
BUILD_DIR="$S2EDIR/build/"

# Comment this out to enable QEMU GUI
GRAPHICS=-nographic

DRIVE_64="-drive file=$S2EDIR/images/debian-8.7.1-x86_64/image.raw.s2e,format=s2e,cache=writeback"
DRIVE_32="-drive file=$S2EDIR/images/debian-8.7.1-x86_64/image.raw.s2e,format=s2e,cache=writeback"

DRIVE=$DRIVE_64

export S2E_CONFIG=s2e-config.lua
export S2E_SHARED_DIR=$INSTALL_DIR/share/libs2e
export S2E_MAX_PROCESSES=1
export S2E_UNBUFFERED_STREAM=1

QEMU="$INSTALL_DIR/bin/qemu-system-x86_64"
LIBS2E="$INSTALL_DIR/share/libs2e/libs2e-x86_64-s2e.so"

LD_PRELOAD=$LIBS2E $QEMU $DRIVE \
    -k en-us $GRAPHICS -monitor null -m 256M -enable-kvm \
    -serial file:serial.txt -net none -net nic,model=e1000 \
    -loadvm ready $*
