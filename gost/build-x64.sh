#!/bin/sh

wget -c https://github.com/gost-engine/engine/archive/v1.1.0.3.tar.gz
rm -f -r engine-1.1.0.3/
rm -f -r build-x64
tar xvzf v1.1.0.3.tar.gz
mkdir build-x64
mkdir lib64
cd build-x64
cmake -DCMAKE_TOOLCHAIN_FILE=../x86_64-w64-mingw32.cmake -DCMAKE_BUILD_TYPE=Release ../engine-1.1.0.3
sed -i 's/lcrypto /lcrypto-1_1-x64 -L..\/..\/lib64 /' CMakeFiles/gost_engine.dir/linklibs.rsp
cmake --build . --config Release
mkdir ../x86_64
cp ../engine-1.1.0.3/bin/* ../x86_64/
cd ..
