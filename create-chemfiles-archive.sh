#!/usr/bin/env bash

set -xeu

git archive HEAD -9 --prefix=mmtf-cpp/ -o mmtf-cpp.tar.gz
tar xf mmtf-cpp.tar.gz
cp -r msgpack-c/include mmtf-cpp/msgpack-c/
rm -rf mmtf-cpp.tar.gz
tar cf mmtf-cpp.tar mmtf-cpp
rm -rf mmtf-cpp
gzip -9 mmtf-cpp.tar
