#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/vyos/vyos1x-config.git#53f069f779cb12777dcfc7aa25d4e1862479e143 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/vyos/vyconf.git#920b75a6dbf9eac4b94600b759818b2ec28004ae -y'

eval `opam config env`
make clean
make
