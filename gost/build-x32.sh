#!/bin/sh

wget -c https://github.com/gost-engine/engine/archive/v1.1.0.3.tar.gz
rm -f -r engine-1.1.0.1/
rm -f -r build-x32/
tar xvzf v1.1.0.3.tar.gz
mkdir build-x32
mkdir lib32
cd build-x32
cmake -DCMAKE_TOOLCHAIN_FILE=../i686-w64-mingw32.cmake -DCMAKE_BUILD_TYPE=Release ../engine-1.1.0.3
sed -i 's/lcrypto /lcrypto-1_1 -L..\/..\/lib32 /' CMakeFiles/gost_engine.dir/linklibs.rsp
cmake --build . --config Release
mkdir ../x86_32
cp ../engine-1.1.0.3/bin/* ../x86_32/
cd ..
