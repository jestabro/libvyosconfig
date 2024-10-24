#!/bin/sh

DIR=$1

# XXX: adjust commit hashes once working repos merged
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/jestabro/vyos1x-config.git#ee9a076026bdf -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/jestabro/vyconf.git#03910a76c978 -y'

eval `opam config env`
make clean
make
