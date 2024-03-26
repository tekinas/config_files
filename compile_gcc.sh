#!/usr/bin/fish
cd gcc
git pull
cd ../gcc-obj/
rm ../gcc-obj/* -rf
export CC="gcc-trunk -march=native"
export CXX="g++-trunk -march=native"
#export CC="clang -march=native"
#export CXX="clang++ -march=native"
../gcc/configure --enable-languages=c,c++ --prefix=/usr --libdir=/usr/lib --libexecdir=/usr/lib --mandir=/usr/share/man --infodir=/usr/share/info \
    --with-linker-hash-style=gnu --with-system-zlib --enable-__cxa_atexit --enable-cet=auto --enable-clocale=gnu --enable-default-pie --enable-default-ssp \
    --enable-gnu-indirect-function --enable-gnu-unique-object --enable-libstdcxx-backtrace --enable-link-serialization=1 --enable-linker-build-id --enable-lto --enable-multilib \
    --enable-plugin --enable-shared --enable-threads=posix --disable-libssp --disable-libstdcxx-pch --disable-werror --program-suffix=-trunk
time make -j (nproc)
