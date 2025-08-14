#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/vyos/vyos1x-config.git#6af7ee2708a69ccb5a301d4a701beaf62d559572 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/vyos/vyconf.git#29e73893a0fc942a96abc06dfa037afd71778d27 -y'

eval `opam config env`
make clean
make
