#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/vyos/vyos1x-config.git#acfac8d809d526e9e5af1ab26cbe093e45ff9f11 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/vyos/vyconf.git#5ae7f4150091efb66c6f9946df81adde3ddc6ace -y'

eval `opam config env`
make clean
make
