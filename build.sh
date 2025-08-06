#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/jestabro/vyos1x-config.git#dd126f493e01968c8f4c7f4c420f31ecc599c242 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/vyos/vyconf.git#29e73893a0fc942a96abc06dfa037afd71778d27 -y'

eval `opam config env`
make clean
make
