#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/jestabro/vyos1x-config.git#868b906e8af275a7121b59bb186c06602e9d8af4 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/jestabro/vyconf.git#7c31ddad2b6e26764f5d0ea0364aa4a70264f7ff -y'

eval `opam config env`
make clean
make
