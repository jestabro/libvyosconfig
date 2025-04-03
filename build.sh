#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/jestabro/vyos1x-config.git#1f82c64395bd4a29fe93e0affbefb572259ee736 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/jestabro/vyconf.git#1169a15b5c29d58d3c765c8c7f264546b381880f -y'

eval `opam config env`
make clean
make
