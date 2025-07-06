#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/vyos/vyos1x-config.git#8c8cd05428f9a6ac73022595e07623658e321ab9 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/vyos/vyconf.git#8113994debf8de11cb28fef92b0f3c34cd0198e5 -y'

eval `opam config env`
make clean
make
