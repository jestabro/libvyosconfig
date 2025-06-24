#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/jestabro/vyos1x-config.git#07cb35225245e825b8cf5c145218000058e4f27c -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/vyos/vyconf.git#f126d8f437e87aa6e0265d1471e2117cd638950e -y'

eval `opam config env`
make clean
make
