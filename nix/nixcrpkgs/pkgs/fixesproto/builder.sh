source $setup

cp -r $src src
chmod -R u+w src
cd src
autoreconf -v --install
cd ..

mkdir build
cd build

../src/configure --prefix=$out
make
make install

ln -sf $xextproto/lib/pkgconfig/*.pc $out/lib/pkgconfig
