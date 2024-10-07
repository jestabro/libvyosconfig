#!/bin/sh

DIR=$1

# Build for testing uses specific repos/commit ids:
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/jestabro/vyos1x-config.git#b2297f819 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/jestabro/vyconf.git#010aed73c6 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-adapter https://github.com/jestabro/vyos1x-adapter.git#caf33373bd -y'

eval `opam config env`
make clean
make
