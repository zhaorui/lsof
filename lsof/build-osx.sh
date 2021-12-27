#!/bin/bash
export LSOF_INCLUDE=$(xcrun -show-sdk-path)/usr/include
./Configure -n darwin
sed -i '' 's/dnexus.c//g' Makefile
sed -i '' 's/dnexus.o//g' Makefile
sed -i '' 's/dnexus.c//g' dialects/darwin/libproc/Makefile
sed -i '' 's/dnexus.o//g' dialects/darwin/libproc/Makefile
make
