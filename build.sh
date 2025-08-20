#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/vyos/vyos1x-config.git#f028431e318e8ce25f1e9a707612682818f68a60 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/vyos/vyconf.git#b0dae5f2a04c080f1a6b8abc42a57967f1cac5e5 -y'

eval `opam config env`
make clean
make
