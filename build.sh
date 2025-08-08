#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/jestabro/vyos1x-config.git#ace49e3a8896b6d0a5305abd96798494a71b26f9 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/jestabro/vyconf.git#05400926db6bd4374ed6b2c43b1d94830d8d65e8 -y'

eval `opam config env`
make clean
make
