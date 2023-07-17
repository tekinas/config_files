#!/usr/bin/fish
cd gcc
git pull
cd ../gcc-obj/
rm ../gcc-obj/* -rf
#export CC="gcc-trunk -march=native"
#export CXX="g++-trunk -march=native"
export CC="clang -march=native"
export CXX="clang++ -march=native"
../gcc/configure --prefix=/usr --libdir=/usr/lib --libexecdir=/usr/lib --mandir=/usr/share/man --infodir=/usr/share/info --enable-languages=c,c++ --program-suffix=-trunk
time make -j (nproc)
