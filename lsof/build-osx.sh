#!/bin/bash
export LSOF_INCLUDE=$(xcrun -show-sdk-path)/usr/include
lsof/Configure -n darwin
make
