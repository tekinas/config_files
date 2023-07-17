#!/usr/bin/fish
cd gcc-obj/
sudo make install-strip
rm ../gcc-obj/* -rf
