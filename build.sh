#!/bin/sh

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/vyos/vyos1x-config.git#c5863024 -y'
eval `opam config env`
make clean
make
