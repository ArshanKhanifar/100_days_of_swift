#!/usr/local/bin/zsh

BUILD_DIR=build
mkdir -p $BUILD_DIR

function run() {
  filename=$1
  no_ext=${1%.*}
  swiftc $filename -o $BUILD_DIR/$no_ext && ./$BUILD_DIR/$no_ext
}

