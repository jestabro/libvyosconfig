#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/vyos/vyos1x-config.git#1f82c64395bd4a29fe93e0affbefb572259ee736 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/vyos/vyconf.git#cb4ccf15b2b24e61ca7ddc3bcdf7ab3acd7bd98e -y'

eval `opam config env`
make clean
make
