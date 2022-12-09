#!/bin/bash
cd ..
mv glfw/ glfw-src/
#remove previous installation
rm -r glfw-build
rm -r glfw
mkdir glfw-build
mkdir glfw
cd glfw-build
cmake \
-DCMAKE_BUILD_TYPE=Release \
-DBUILD_SHARED_LIBS=On \
-DCMAKE_INSTALL_PREFIX=../glfw \
../glfw-src
make -j 8
make install
cd ..
rm -r glfw-build
cp glfw-src/bk.cmake glfw
