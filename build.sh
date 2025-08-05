#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/jestabro/vyos1x-config.git#90a9a0490d62a9b703b5928843aa99a525509a58 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/vyos/vyconf.git#29e73893a0fc942a96abc06dfa037afd71778d27 -y'

eval `opam config env`
make clean
make
